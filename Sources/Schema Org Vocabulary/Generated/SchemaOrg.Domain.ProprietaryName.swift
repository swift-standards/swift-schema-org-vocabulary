extension SchemaOrg.Domain {

    public protocol ProprietaryName: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ProprietaryName {

    public var proprietaryName: Swift.String? {
        get { self[first: "proprietaryName"] }
        set { self[first: "proprietaryName"] = newValue }
    }
}
