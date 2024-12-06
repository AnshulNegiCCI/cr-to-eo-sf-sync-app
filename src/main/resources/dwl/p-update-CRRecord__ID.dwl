%dw 2.0
output application/json
var inputpayload = vars.batchPayload
---
((inputpayload map ((item, index) -> {
    updateId: item.updateId,
    response: payload.items[index] 

})) filter ((item) -> 
        item.response.successful == true and
        item.response.payload.created == true)) map ((item) -> {
            "Id" : item.updateId,
            "CRRecordId__c":item.response.payload.id
        })