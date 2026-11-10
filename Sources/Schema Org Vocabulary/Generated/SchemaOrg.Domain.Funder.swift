extension SchemaOrg.Domain {

    public protocol Funder: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Funder {

    public var funder: SchemaOrg.Range.Funder? {
        get { self[first: "funder"] }
        set { self[first: "funder"] = newValue }
    }
}
