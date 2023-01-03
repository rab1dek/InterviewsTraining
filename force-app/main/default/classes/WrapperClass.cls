public with sharing class WrapperClass {
    @AuraEnabled public String name {get; set;}
    @AuraEnabled public Decimal annualRevenue {get; set;}
    @AuraEnabled public Boolean isProspect {get; set;}
}
