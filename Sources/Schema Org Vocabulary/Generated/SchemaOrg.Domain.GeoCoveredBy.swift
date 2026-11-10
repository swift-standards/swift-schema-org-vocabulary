extension SchemaOrg.Domain {

    public protocol GeoCoveredBy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoCoveredBy {

    public var geoCoveredBy: SchemaOrg.Range.GeoCoveredBy? {
        get { self[first: "geoCoveredBy"] }
        set { self[first: "geoCoveredBy"] = newValue }
    }
}
