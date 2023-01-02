@isTest
public with sharing class AccBuilderTest {
    @isTest
    static void isAccCreated() {
        Account acc = new AccountDirector().build(new AccBuilder());
        System.assertEquals('Account Test 2', acc.Name);
    }
}
