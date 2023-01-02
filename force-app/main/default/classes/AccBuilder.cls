public with sharing class AccBuilder implements IAccountBuilder {
            public Account acc {get; private set;}

            public AccBuilder() {
                this.acc = new Account();
            }

            public void setName(String name) {
                acc.Name = name;
            }

            public Account build() {
                return acc;
            }

}
