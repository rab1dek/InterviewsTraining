public with sharing class AccountDirector {

    public Account build(IAccountBuilder accBuilder) {
        return (Account)accBuilder.setName('Account Test 2').build();
    }
}
