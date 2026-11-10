extension SchemaOrg.Domain {

    public protocol CodeValue: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CodeValue {

    public var codeValue: Swift.String? {
        get { self[first: "codeValue"] }
        set { self[first: "codeValue"] = newValue }
    }
}
