extension SchemaOrg.Key where V == SchemaOrg.Property {

    public static var inverseOf: Self {
        Self("inverseOf")
    }

    public static var measuredProperty: Self {
        Self("measuredProperty")
    }
}
