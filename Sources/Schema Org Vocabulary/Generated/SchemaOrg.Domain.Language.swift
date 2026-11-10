extension SchemaOrg.Domain {

    public protocol Language: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Language {

    public var language: SchemaOrg.Language? {
        get { self[first: "language"] }
        set { self[first: "language"] = newValue }
    }
}
