public with sharing class ClassWrapperController {

    @AuraEnabled(cacheable = true)
    public static List<ClassWrapper> getRecordWrap() {
        
        ClassWrapper wrap = new ClassWrapper();
        wrap.isGood = true;
        wrap.name = 'Burger';
        wrap.price = 11;

        ClassWrapper wrap2 = new ClassWrapper();
        wrap2.isGood = false;
        wrap2.name = 'Pizza';
        wrap2.price = 23;

        return new List<ClassWrapper> {wrap, wrap2};
    }
}
