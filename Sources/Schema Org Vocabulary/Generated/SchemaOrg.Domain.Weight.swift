extension SchemaOrg.Domain {

    public protocol Weight: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Weight {

    public var weight: SchemaOrg.Range.Weight? {
        get { self[first: "weight"] }
        set { self[first: "weight"] = newValue }
    }
}
