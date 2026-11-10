extension SchemaOrg.Domain {

    public protocol Address: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Address {

    public var address: SchemaOrg.Range.Address? {
        get { self[first: "address"] }
        set { self[first: "address"] = newValue }
    }
}
