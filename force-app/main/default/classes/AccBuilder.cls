public with sharing class AccBuilder implements IAccountBuilder {
            private Account acc;

            public AccBuilder() {
                this.acc = new Account();
            }

            public IAccountBuilder setName(String name) {
                acc.Name = name;
                return this;
            }

            public Account build() {
                return acc;
            }

}
