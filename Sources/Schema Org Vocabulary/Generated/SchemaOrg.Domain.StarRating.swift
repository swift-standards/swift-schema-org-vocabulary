extension SchemaOrg.Domain {

    public protocol StarRating: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.StarRating {

    public var starRating: SchemaOrg.Rating? {
        get { self[first: "starRating"] }
        set { self[first: "starRating"] = newValue }
    }
}
