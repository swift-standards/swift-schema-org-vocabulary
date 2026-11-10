extension SchemaOrg.Domain {

    public protocol AdverseOutcome: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AdverseOutcome {

    public var adverseOutcome: SchemaOrg.MedicalEntity? {
        get { self[first: "adverseOutcome"] }
        set { self[first: "adverseOutcome"] = newValue }
    }
}
