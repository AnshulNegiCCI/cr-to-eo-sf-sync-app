%dw 2.0
output application/java
---
payload map ((campaignMember) -> {
     "Id" : campaignMember.CRRecordId__c,
     "updateId" : campaignMember.Id,
    "FirstRespondedDate": (campaignMember.FirstRespondedDate as Date {format: "yyyy-MM-dd"})  default null
})
