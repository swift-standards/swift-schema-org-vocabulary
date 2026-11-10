extension SchemaOrg.Domain {

    public protocol CompetencyRequired: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CompetencyRequired {

    public var competencyRequired: SchemaOrg.Range.CompetencyRequired? {
        get { self[first: "competencyRequired"] }
        set { self[first: "competencyRequired"] = newValue }
    }
}
