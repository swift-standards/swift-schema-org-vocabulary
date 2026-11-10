extension SchemaOrg.FloorPlan {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AmenityFeature,
        SchemaOrg.Domain.FloorSize,
        SchemaOrg.Domain.NumberOfAccommodationUnits,
        SchemaOrg.Domain.NumberOfAvailableAccommodationUnits,
        SchemaOrg.Domain.NumberOfBathroomsTotal,
        SchemaOrg.Domain.NumberOfBedrooms,
        SchemaOrg.Domain.NumberOfFullBathrooms,
        SchemaOrg.Domain.NumberOfPartialBathrooms,
        SchemaOrg.Domain.NumberOfRooms,
        SchemaOrg.Domain.PetsAllowed
    {}
}

extension SchemaOrg.FloorPlan.`Protocol` {

    public var isPlanForApartment: SchemaOrg.Accommodation? {
        get { self[first: "isPlanForApartment"] }
        set { self[first: "isPlanForApartment"] = newValue }
    }

    public var layoutImage: SchemaOrg.Range.LayoutImage? {
        get { self[first: "layoutImage"] }
        set { self[first: "layoutImage"] = newValue }
    }
}
