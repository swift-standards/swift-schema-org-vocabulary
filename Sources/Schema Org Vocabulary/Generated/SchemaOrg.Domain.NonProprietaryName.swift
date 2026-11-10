extension SchemaOrg.Domain {

    public protocol NonProprietaryName: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NonProprietaryName {

    public var nonProprietaryName: Swift.String? {
        get { self[first: "nonProprietaryName"] }
        set { self[first: "nonProprietaryName"] = newValue }
    }
}
