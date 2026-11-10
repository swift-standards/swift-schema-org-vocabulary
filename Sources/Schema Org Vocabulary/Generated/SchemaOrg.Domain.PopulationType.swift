extension SchemaOrg.Domain {

    public protocol PopulationType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PopulationType {

    public var populationType: SchemaOrg.Class? {
        get { self[first: "populationType"] }
        set { self[first: "populationType"] = newValue }
    }
}
