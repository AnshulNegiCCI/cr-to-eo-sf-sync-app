%dw 2.0
output application/json
---
vars.errorMessages ++ ((vars.batchPayload
    map ((item, index) -> {
        EmbursseId: item.CRRecordId__c,
        CrId: item.Id,
        response: payload.items[index]
    })
    filter ((item) -> item.response.successful == false)
    map ((item) -> {
        id: item.EmbursseId,
        operation: if (item.CrId == null) "create" else "update",
        error: item.response.message
    })
    map ((item) -> 
        "[[ID: " ++ item.id ++ ", Operation: " ++ item.operation ++ ", Error: " ++ item.error ++ "]]"
    )
) joinBy " ; ")
