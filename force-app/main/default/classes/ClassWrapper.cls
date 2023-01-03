public with sharing class ClassWrapper {
    @AuraEnabled public String name {get; set;}
    @AuraEnabled public Decimal price {get; set;}
    @AuraEnabled public Boolean isGood {get; set;}
}
