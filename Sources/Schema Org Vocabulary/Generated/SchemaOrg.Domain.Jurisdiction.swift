extension SchemaOrg.Domain {

    public protocol Jurisdiction: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Jurisdiction {

    public var jurisdiction: SchemaOrg.Range.Jurisdiction? {
        get { self[first: "jurisdiction"] }
        set { self[first: "jurisdiction"] = newValue }
    }
}
