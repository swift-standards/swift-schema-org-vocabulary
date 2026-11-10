extension SchemaOrg.Domain {

    public protocol CorrectionsPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CorrectionsPolicy {

    public var correctionsPolicy: SchemaOrg.Range.CorrectionsPolicy? {
        get { self[first: "correctionsPolicy"] }
        set { self[first: "correctionsPolicy"] = newValue }
    }
}
