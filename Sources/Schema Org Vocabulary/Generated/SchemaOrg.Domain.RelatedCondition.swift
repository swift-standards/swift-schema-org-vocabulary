extension SchemaOrg.Domain {

    public protocol RelatedCondition: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RelatedCondition {

    public var relatedCondition: SchemaOrg.MedicalCondition? {
        get { self[first: "relatedCondition"] }
        set { self[first: "relatedCondition"] = newValue }
    }
}
