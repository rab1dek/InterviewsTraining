public interface IWrapperClassBuilder {
    IWrapperClassBuilder setName(String name);
    IWrapperClassBuilder setPrice(Decimal price);
    IWrapperClassBuilder setProspect(String type);
    WrapperClass build();
   
}
