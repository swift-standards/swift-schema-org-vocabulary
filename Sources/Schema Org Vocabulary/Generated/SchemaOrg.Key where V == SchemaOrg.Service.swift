extension SchemaOrg.Key where V == SchemaOrg.Service {

    public static var issuedThrough: Self {
        Self("issuedThrough")
    }

    public static var providesService: Self {
        Self("providesService")
    }
}
