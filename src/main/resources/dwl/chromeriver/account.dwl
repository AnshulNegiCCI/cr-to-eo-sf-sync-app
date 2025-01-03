%dw 2.0
output application/java
---
payload map ((account) -> {
	"EXT_ID__c" : account.EXT_ID__c,
	 "Name" : account.Name,
	"CRRecordId__c" : account.Id,
	"MQA_Disposition__c" : account.MQA_Disposition__c,
    "BypassValidationRules__c": (account.BypassValidationRules__c as Boolean) default null,
    "BillingCountry": account.BillingAddress.country,
    "BillingCity": account.BillingAddress.city,
    "BillingCountryCode": account.BillingAddress.countryCode,
    "BillingStreet": account.BillingAddress.street,
    "BillingLatitude": account.BillingAddress.latitude,
    "BillingPostalCode": account.BillingAddress.postalCode,
    "BillingGeocodeAccuracy": account.BillingAddress.geocodeAccuracy,
    "BillingStateCode": account.BillingAddress.stateCode,
    "BillingState": account.BillingAddress.state,
    "BillingLongitude": account.BillingAddress.longitude,    
    "IsExcludedFromRealign": (account.IsExcludedFromRealign as Boolean) default null,
    "MQA_Flow_Ran__c": (account.MQA_Flow_Ran__c as Boolean) default null,
    "SBQQ__IgnoreParentContractedPrices__c": (account.SBQQ__IgnoreParentContractedPrices__c as Boolean) default null,
    "Send_to_LeanData_for_Notification__c": (account.Send_to_LeanData_for_Notification__c as Boolean) default null,
    "Send_to_LeanData_for_Routing__c": (account.Send_to_LeanData_for_Routing__c as Boolean) default null,
    "Billing_Platform_ARR__c": account.Billing_Platform_ARR__c,
    "AnnualRevenue": account.AnnualRevenue,
    "EIA_Expense_Go_Live__c": (account.EIA_Expense_Go_Live__c as Date {format: "yyyy-MM-dd"}) default null,
    "EIA_Invoice_Go_Live__c": (account.EIA_Invoice_Go_Live__c as Date {format: "yyyy-MM-dd"}) default null,
    "ESA_Expense_Go_Live__c": (account.ESA_Expense_Go_Live__c as Date {format: "yyyy-MM-dd"}) default null,
    "ESA_Invoice_Go_Live__c": (account.ESA_Invoice_Go_Live__c as Date {format: "yyyy-MM-dd"}) default null,
    "Original_MQA_Date__c": account.Original_MQA_Date__c as Date {format: "yyyy-MM-dd"} as Date {format: "MM/dd/yyyy"} default null,
    "Recent_MQA_Date__c": account.Recent_MQA_Date__c as Date {format: "yyyy-MM-dd"} as Date {format: "MM/dd/yyyy"} default null,
    "SBQQ__PriceHoldEnd__c": (account.SBQQ__PriceHoldEnd__c as Date {format: "yyyy-MM-dd"}) default null,
    "DOZISF__ZoomInfo_First_Updated__c": (account.DOZISF__ZoomInfo_First_Updated__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "DOZISF__ZoomInfo_Last_Updated__c": (account.DOZISF__ZoomInfo_Last_Updated__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "engagio__CustomerDate__c": (account.engagio__CustomerDate__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "engagio__FirstEngagementDate__c": (account.engagio__FirstEngagementDate__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "engagio__MQADate__c": (account.engagio__MQADate__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "engagio__PipelineDate__c": (account.engagio__PipelineDate__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "Expense_Go_Live__c": (account.Expense_Go_Live__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "Invoice_Go_Live__c": (account.Invoice_Go_Live__c as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}) default null,
    "Prospecting_Notes__c": account.Prospecting_Notes__c,
    "engagio__Competitive_Intent_Keywords_longtext__c": account.engagio__Competitive_Intent_Keywords_longtext__c,
    "engagio__HighIntentKeywords_longtext__c": account.engagio__HighIntentKeywords_longtext__c,
    "Partner_Migration_Notes__c": account.Partner_Migration_Notes__c,
    "Contact_Count__c": account.Contact_Count__c,
    "engagio__EngagementMinutesLast30Days__c": account.engagio__EngagementMinutesLast30Days__c,
    "engagio__Sales_Touches_14_days__c": account.engagio__Sales_Touches_14_days__c,
    "engagio__Sales_Touches_7_days__c": account.engagio__Sales_Touches_7_days__c,
    "engagio__WebVisitsLast3Months__c": account.engagio__WebVisitsLast3Months__c,
    "Re_MQA_Counter__c": account.Re_MQA_Counter__c,
    "ZoomInfo_Employees__c": account.ZoomInfo_Employees__c,
    "ShippingCountry": account.ShippingAddress.country,
    "ShippingCity": account.ShippingAddress.city,
    "ShippingCountryCode": account.ShippingAddress.countryCode,
    "ShippingStreet": account.ShippingAddress.street,
    "ShippingLatitude": account.ShippingAddress.latitude,
    "ShippingPostalCode": account.ShippingAddress.postalCode,
    "ShippingGeocodeAccuracy": account.ShippingAddress.geocodeAccuracy,
    "ShippingStateCode": account.ShippingAddress.stateCode,
    "ShippingState": account.ShippingAddress.state,
    "ShippingLongitude": account.ShippingAddress.longitude,    
    "engagio__pipeline_predict_score__c": account.engagio__pipeline_predict_score__c,
    "engagio__qualification_score__c": account.engagio__qualification_score__c,
    "Phone": account.Phone,
    "GCLID__c": account.GCLID__c,
    "Account_Exclusion__c": account.Account_Exclusion__c,
    "DemandBase_Industry__c": account.DemandBase_Industry__c,
    "engagio__Status__c": account.engagio__Status__c,
    "Billing_Platform_ID__c": account.Billing_Platform_ID__c,
    "Nexonia_Product_ID__c": account.Nexonia_Product_ID__c,
    "Account_Name_Legal__c": account.Account_Name_Legal__c,
    "LeanData__LD_EmailDomains__c": account.LeanData__LD_EmailDomains__c,
    "NetSuite_External_ID__c": account.NetSuite_External_ID__c,
    "DOZISF__ZoomInfo_Id__c": account.DOZISF__ZoomInfo_Id__c,
    "LeanData__Routing_Action__c": account.LeanData__Routing_Action__c,
    "zDummy_Field__c": account.zDummy_Field__c,
    "Tag__c": account.Tag__c,
    "ZoomInfo_Country__c": account.ZoomInfo_Country__c,
    "Website": account.Website

})

