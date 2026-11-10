extension SchemaOrg.Domain {

    public protocol TouristType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TouristType {

    public var touristType: SchemaOrg.Range.TouristType? {
        get { self[first: "touristType"] }
        set { self[first: "touristType"] = newValue }
    }
}
