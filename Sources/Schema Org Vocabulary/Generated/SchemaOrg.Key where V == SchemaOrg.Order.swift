extension SchemaOrg.Key where V == SchemaOrg.Order {

    public static var partOfOrder: Self {
        Self("partOfOrder")
    }

    public static var referencesOrder: Self {
        Self("referencesOrder")
    }
}
