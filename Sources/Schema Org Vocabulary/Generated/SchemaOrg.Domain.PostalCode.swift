extension SchemaOrg.Domain {

    public protocol PostalCode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PostalCode {

    public var postalCode: Swift.String? {
        get { self[first: "postalCode"] }
        set { self[first: "postalCode"] = newValue }
    }
}
