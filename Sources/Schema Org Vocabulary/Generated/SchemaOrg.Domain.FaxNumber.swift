extension SchemaOrg.Domain {

    public protocol FaxNumber: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FaxNumber {

    public var faxNumber: Swift.String? {
        get { self[first: "faxNumber"] }
        set { self[first: "faxNumber"] = newValue }
    }
}
