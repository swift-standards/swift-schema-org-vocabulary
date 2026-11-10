extension SchemaOrg.Domain {

    public protocol ActionableFeedbackPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ActionableFeedbackPolicy {

    public var actionableFeedbackPolicy: SchemaOrg.Range.ActionableFeedbackPolicy? {
        get { self[first: "actionableFeedbackPolicy"] }
        set { self[first: "actionableFeedbackPolicy"] = newValue }
    }
}
