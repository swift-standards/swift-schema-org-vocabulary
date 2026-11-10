extension SchemaOrg.Domain {

    public protocol Currency: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Currency {

    public var currency: Swift.String? {
        get { self[first: "currency"] }
        set { self[first: "currency"] = newValue }
    }
}
