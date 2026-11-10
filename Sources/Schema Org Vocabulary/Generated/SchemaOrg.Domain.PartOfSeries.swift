extension SchemaOrg.Domain {

    public protocol PartOfSeries: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PartOfSeries {

    public var partOfSeries: SchemaOrg.CreativeWorkSeries? {
        get { self[first: "partOfSeries"] }
        set { self[first: "partOfSeries"] = newValue }
    }
}
