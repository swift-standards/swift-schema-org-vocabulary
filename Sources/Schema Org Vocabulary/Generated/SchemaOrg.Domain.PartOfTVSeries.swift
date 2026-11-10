extension SchemaOrg.Domain {

    public protocol PartOfTVSeries: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PartOfTVSeries {

    public var partOfTVSeries: SchemaOrg.TVSeries? {
        get { self[first: "partOfTVSeries"] }
        set { self[first: "partOfTVSeries"] = newValue }
    }
}
