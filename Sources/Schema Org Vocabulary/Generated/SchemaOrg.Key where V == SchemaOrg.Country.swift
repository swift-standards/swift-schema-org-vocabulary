extension SchemaOrg.Key where V == SchemaOrg.Country {

    public static var countryOfOrigin: Self {
        Self("countryOfOrigin")
    }

    public static var nationality: Self {
        Self("nationality")
    }
}
