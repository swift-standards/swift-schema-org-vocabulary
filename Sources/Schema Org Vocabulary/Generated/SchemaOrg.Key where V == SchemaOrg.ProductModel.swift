extension SchemaOrg.Key where V == SchemaOrg.ProductModel {

    public static var predecessorOf: Self {
        Self("predecessorOf")
    }

    public static var successorOf: Self {
        Self("successorOf")
    }
}
