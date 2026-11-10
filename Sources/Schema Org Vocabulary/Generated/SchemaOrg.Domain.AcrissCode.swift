extension SchemaOrg.Domain {

    public protocol AcrissCode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AcrissCode {

    public var acrissCode: Swift.String? {
        get { self[first: "acrissCode"] }
        set { self[first: "acrissCode"] = newValue }
    }
}
