extension SchemaOrg.Domain {

    public protocol AggregateRating: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AggregateRating {

    public var aggregateRating: SchemaOrg.AggregateRating? {
        get { self[first: "aggregateRating"] }
        set { self[first: "aggregateRating"] = newValue }
    }
}
