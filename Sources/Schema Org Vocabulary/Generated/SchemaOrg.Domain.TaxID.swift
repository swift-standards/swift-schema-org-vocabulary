extension SchemaOrg.Domain {

    public protocol TaxID: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TaxID {

    public var taxID: Swift.String? {
        get { self[first: "taxID"] }
        set { self[first: "taxID"] = newValue }
    }
}
