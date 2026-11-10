extension SchemaOrg.Domain {

    public protocol Supply: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Supply {

    public var supply: SchemaOrg.Range.Supply? {
        get { self[first: "supply"] }
        set { self[first: "supply"] = newValue }
    }
}
