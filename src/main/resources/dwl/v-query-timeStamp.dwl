%dw 2.0
output application/json
---
p('chromeriver.timeStamp') ++ "'$(payload)'" ++ " ORDER BY Last_Run_Timestamp__c DESC LIMIT 1"