extension SchemaOrg.Domain {

    public protocol SeriousAdverseOutcome: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SeriousAdverseOutcome {

    public var seriousAdverseOutcome: SchemaOrg.MedicalEntity? {
        get { self[first: "seriousAdverseOutcome"] }
        set { self[first: "seriousAdverseOutcome"] = newValue }
    }
}
