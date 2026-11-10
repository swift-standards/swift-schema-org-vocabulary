extension SchemaOrg.Domain {

    public protocol Pattern: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Pattern {

    public var pattern: SchemaOrg.Range.Pattern? {
        get { self[first: "pattern"] }
        set { self[first: "pattern"] = newValue }
    }
}
