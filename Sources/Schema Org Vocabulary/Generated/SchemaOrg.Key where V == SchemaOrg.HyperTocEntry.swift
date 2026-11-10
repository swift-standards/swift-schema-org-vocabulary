extension SchemaOrg.Key where V == SchemaOrg.HyperTocEntry {

    public static var tocContinuation: Self {
        Self("tocContinuation")
    }

    public static var tocEntry: Self {
        Self("tocEntry")
    }
}
