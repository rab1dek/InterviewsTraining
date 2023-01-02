public interface IAccountBuilder {
    IAccountBuilder setName(String name);
    Sobject build();
}
