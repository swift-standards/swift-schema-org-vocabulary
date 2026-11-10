extension SchemaOrg.Domain {

    public protocol Seeks: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Seeks {

    public var seeks: SchemaOrg.Demand? {
        get { self[first: "seeks"] }
        set { self[first: "seeks"] = newValue }
    }
}
