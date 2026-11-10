extension SchemaOrg.Domain {

    public protocol Translator: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Translator {

    public var translator: SchemaOrg.Range.Translator? {
        get { self[first: "translator"] }
        set { self[first: "translator"] = newValue }
    }
}
