extension SchemaOrg.Domain {

    public protocol PublishingPrinciples: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PublishingPrinciples {

    public var publishingPrinciples: SchemaOrg.Range.PublishingPrinciples? {
        get { self[first: "publishingPrinciples"] }
        set { self[first: "publishingPrinciples"] = newValue }
    }
}
