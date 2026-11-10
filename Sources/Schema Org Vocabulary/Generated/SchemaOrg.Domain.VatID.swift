extension SchemaOrg.Domain {

    public protocol VatID: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.VatID {

    public var vatID: Swift.String? {
        get { self[first: "vatID"] }
        set { self[first: "vatID"] = newValue }
    }
}
