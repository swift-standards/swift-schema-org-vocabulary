extension SchemaOrg.Domain {

    public protocol HasDefinedTerm: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasDefinedTerm {

    public var hasDefinedTerm: SchemaOrg.DefinedTerm? {
        get { self[first: "hasDefinedTerm"] }
        set { self[first: "hasDefinedTerm"] = newValue }
    }
}
