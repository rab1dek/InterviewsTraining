public with sharing class WrapperClassController {
    @AuraEnabled(cacheable = true)
    public static List<WrapperClass> getWrapperRecords() {
        List<WrapperClass> wrapList = new List<WrapperClass>();
        for(Account acc : [SELECT Name, AnnualRevenue, Type FROM Account LIMIT 10]) {
            
            WrapperClass wrap = new WrapperClassBuilder()
            .setName(acc.Name)
            .setPrice(acc.AnnualRevenue)
            .setProspect(acc.Type)
            .build();

            wrapList.add(wrap);
        }
        return wrapList;
    }
}
