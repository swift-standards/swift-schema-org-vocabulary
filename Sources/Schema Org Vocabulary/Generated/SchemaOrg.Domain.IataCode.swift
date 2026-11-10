extension SchemaOrg.Domain {

    public protocol IataCode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IataCode {

    public var iataCode: Swift.String? {
        get { self[first: "iataCode"] }
        set { self[first: "iataCode"] = newValue }
    }
}
