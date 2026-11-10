extension SchemaOrg.Domain {

    public protocol AccommodationFloorPlan: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AccommodationFloorPlan {

    public var accommodationFloorPlan: SchemaOrg.FloorPlan? {
        get { self[first: "accommodationFloorPlan"] }
        set { self[first: "accommodationFloorPlan"] = newValue }
    }
}
