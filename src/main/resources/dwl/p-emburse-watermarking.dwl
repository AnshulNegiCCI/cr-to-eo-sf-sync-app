%dw 2.0
output application/java
var total = vars.successfulCount + vars.failedCount
var status = 
    if (vars.successfulCount == total and vars.successfulCount != 0) "Successful"
    else if (vars.failedCount == total and vars.failedCount != 0) "Unsuccessful"
    else if (vars.successfulCount != 0 and vars.failedCount != 0) "Partially Successful"
    else "No records processed"
var errorLog = if (vars.errorMessages != "") vars.errorMessages else "No errors"
---
[{
    Payload_Type__c: vars.objectName,
    Last_Run_Timestamp__c: vars.fetchTimeStamp as DateTime,    
    CorrelationID__c: correlationId,
    Error_Log__c: errorLog,
    Error_Count__c: vars.failedCount as String,
    Success_Count__c: vars.successfulCount as String,
    Total_Records_Processed__c: total,
    Status__c: status
}]
