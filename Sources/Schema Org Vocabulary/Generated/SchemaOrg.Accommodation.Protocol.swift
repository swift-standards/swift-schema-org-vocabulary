extension SchemaOrg.Accommodation {

    public protocol `Protocol`:
        SchemaOrg.Place.`Protocol`,
        SchemaOrg.Domain.AccommodationFloorPlan,
        SchemaOrg.Domain.AmenityFeature,
        SchemaOrg.Domain.Bed,
        SchemaOrg.Domain.FloorLevel,
        SchemaOrg.Domain.FloorSize,
        SchemaOrg.Domain.LeaseLength,
        SchemaOrg.Domain.NumberOfBathroomsTotal,
        SchemaOrg.Domain.NumberOfBedrooms,
        SchemaOrg.Domain.NumberOfFullBathrooms,
        SchemaOrg.Domain.NumberOfPartialBathrooms,
        SchemaOrg.Domain.NumberOfRooms,
        SchemaOrg.Domain.Occupancy,
        SchemaOrg.Domain.PetsAllowed,
        SchemaOrg.Domain.TourBookingPage
    {}
}

extension SchemaOrg.Accommodation.`Protocol` {

    public var accommodationCategory: Swift.String? {
        get { self[first: "accommodationCategory"] }
        set { self[first: "accommodationCategory"] = newValue }
    }

    public var permittedUsage: Swift.String? {
        get { self[first: "permittedUsage"] }
        set { self[first: "permittedUsage"] = newValue }
    }

    public var yearBuilt: Swift.Double? {
        get { self[first: "yearBuilt"] }
        set { self[first: "yearBuilt"] = newValue }
    }
}
