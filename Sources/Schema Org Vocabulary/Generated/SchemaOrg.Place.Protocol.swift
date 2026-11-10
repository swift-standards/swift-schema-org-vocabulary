extension SchemaOrg.Place {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.AdditionalProperty,
        SchemaOrg.Domain.Address,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.AmenityFeature,
        SchemaOrg.Domain.Event,
        SchemaOrg.Domain.Events,
        SchemaOrg.Domain.FaxNumber,
        SchemaOrg.Domain.GeoContains,
        SchemaOrg.Domain.GeoCoveredBy,
        SchemaOrg.Domain.GeoCovers,
        SchemaOrg.Domain.GeoCrosses,
        SchemaOrg.Domain.GeoDisjoint,
        SchemaOrg.Domain.GeoEquals,
        SchemaOrg.Domain.GeoIntersects,
        SchemaOrg.Domain.GeoOverlaps,
        SchemaOrg.Domain.GeoTouches,
        SchemaOrg.Domain.GeoWithin,
        SchemaOrg.Domain.GlobalLocationNumber,
        SchemaOrg.Domain.HasCertification,
        SchemaOrg.Domain.HasGS1DigitalLink,
        SchemaOrg.Domain.IsAccessibleForFree,
        SchemaOrg.Domain.IsicV4,
        SchemaOrg.Domain.Keywords,
        SchemaOrg.Domain.Latitude,
        SchemaOrg.Domain.Logo,
        SchemaOrg.Domain.Longitude,
        SchemaOrg.Domain.MaximumAttendeeCapacity,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Reviews,
        SchemaOrg.Domain.Slogan,
        SchemaOrg.Domain.Telephone,
        SchemaOrg.Domain.TourBookingPage
    {}
}

extension SchemaOrg.Place.`Protocol` {

    public var branchCode: Swift.String? {
        get { self[first: "branchCode"] }
        set { self[first: "branchCode"] = newValue }
    }

    public var containedIn: SchemaOrg.Place? {
        get { self[first: "containedIn"] }
        set { self[first: "containedIn"] = newValue }
    }

    public var containedInPlace: SchemaOrg.Place? {
        get { self[first: "containedInPlace"] }
        set { self[first: "containedInPlace"] = newValue }
    }

    public var containsPlace: SchemaOrg.Place? {
        get { self[first: "containsPlace"] }
        set { self[first: "containsPlace"] = newValue }
    }

    public var geo: SchemaOrg.Range.Geo? {
        get { self[first: "geo"] }
        set { self[first: "geo"] = newValue }
    }

    public var hasDriveThroughService: Swift.Bool? {
        get { self[first: "hasDriveThroughService"] }
        set { self[first: "hasDriveThroughService"] = newValue }
    }

    public var hasMap: SchemaOrg.Range.HasMap? {
        get { self[first: "hasMap"] }
        set { self[first: "hasMap"] = newValue }
    }

    public var map: RFC_3986.URI? {
        get { self[first: "map"] }
        set { self[first: "map"] = newValue }
    }

    public var maps: RFC_3986.URI? {
        get { self[first: "maps"] }
        set { self[first: "maps"] = newValue }
    }

    public var openingHoursSpecification: SchemaOrg.OpeningHoursSpecification? {
        get { self[first: "openingHoursSpecification"] }
        set { self[first: "openingHoursSpecification"] = newValue }
    }

    public var photo: SchemaOrg.Range.Photo? {
        get { self[first: "photo"] }
        set { self[first: "photo"] = newValue }
    }

    public var photos: SchemaOrg.Range.Photos? {
        get { self[first: "photos"] }
        set { self[first: "photos"] = newValue }
    }

    public var publicAccess: Swift.Bool? {
        get { self[first: "publicAccess"] }
        set { self[first: "publicAccess"] = newValue }
    }

    public var smokingAllowed: Swift.Bool? {
        get { self[first: "smokingAllowed"] }
        set { self[first: "smokingAllowed"] = newValue }
    }

    public var specialOpeningHoursSpecification: SchemaOrg.OpeningHoursSpecification? {
        get { self[first: "specialOpeningHoursSpecification"] }
        set { self[first: "specialOpeningHoursSpecification"] = newValue }
    }
}
