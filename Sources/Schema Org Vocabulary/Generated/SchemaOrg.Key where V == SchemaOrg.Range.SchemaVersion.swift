extension SchemaOrg.Key where V == SchemaOrg.Range.SchemaVersion {

    public static var schemaVersion: Self {
        Self("schemaVersion")
    }
}
