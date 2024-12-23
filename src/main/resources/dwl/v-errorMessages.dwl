%dw 2.0
output application/java
---
vars.errorMessages ++ ((vars.batchPayload
    map ((item, index) -> {
        EmbursseId: item.CRRecordId__c,
        CrId: item.Id,
        response: payload.items[index],
        Name:if(vars.objectName != "Account")((item.FirstName) default "" ++" "++ (item.LastName) default "")  else item.Name default ""
    })
    filter ((item) -> item.response.successful == false)
    map ((item) -> {
        id: item.EmbursseId,
        operation: if (item.CrId == null) "create" else "update",
        error: item.response.message,
        Name:item.Name
    })
    map ((item) -> 
        "[[ID: " ++ item.id ++ ", Name:"++ item.Name++", Operation: " ++ item.operation ++ ", Error: " ++ item.error ++ "]]"
    )
) joinBy " ; ")


