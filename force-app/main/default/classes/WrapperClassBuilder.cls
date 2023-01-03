public with sharing class WrapperClassBuilder {
    private WrapperClass wrap;

    public WrapperClassBuilder() {
        this.wrap = new WrapperClass();
    }

    public WrapperClassBuilder setName(String name) {
        wrap.name = name;
        return this;
    }

    public WrapperClassBuilder setPrice(Decimal price) {
        wrap.annualRevenue = price;
        return this;
    }

    public WrapperClassBuilder setProspect(String type) {
        wrap.isProspect = type == 'Prospect';
        return this;
    }
    
    public WrapperClass build() {
        return wrap;
    }
}
