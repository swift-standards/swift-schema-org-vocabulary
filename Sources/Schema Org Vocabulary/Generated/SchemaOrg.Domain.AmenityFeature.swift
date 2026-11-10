extension SchemaOrg.Domain {

    public protocol AmenityFeature: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AmenityFeature {

    public var amenityFeature: SchemaOrg.LocationFeatureSpecification? {
        get { self[first: "amenityFeature"] }
        set { self[first: "amenityFeature"] = newValue }
    }
}
