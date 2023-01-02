public with sharing class AccountDirector {
    IAccountBuilder accBuilder;

    public Account build(IAccountBuilder accBuilder) {
        this.accBuilder = accBuilder;
        accBuilder.setName('Account Test 2');
        return (Account)accBuilder.build();
    }
}
