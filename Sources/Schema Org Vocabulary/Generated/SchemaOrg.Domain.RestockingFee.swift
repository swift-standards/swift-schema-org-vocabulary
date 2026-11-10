extension SchemaOrg.Domain {

    public protocol RestockingFee: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RestockingFee {

    public var restockingFee: SchemaOrg.Range.RestockingFee? {
        get { self[first: "restockingFee"] }
        set { self[first: "restockingFee"] = newValue }
    }
}
