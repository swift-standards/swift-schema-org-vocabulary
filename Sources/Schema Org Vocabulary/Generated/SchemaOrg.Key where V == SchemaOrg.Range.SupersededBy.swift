extension SchemaOrg.Key where V == SchemaOrg.Range.SupersededBy {

    public static var supersededBy: Self {
        Self("supersededBy")
    }
}
