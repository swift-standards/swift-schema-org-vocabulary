extension SchemaOrg {

    public struct Country: SchemaOrg.Country.`Protocol`, Swift.Hashable {

        public static let type = "Country"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Country {

    public init(
        id: Swift.String? = nil,
        additionalType: SchemaOrg.Range.AdditionalType? = nil,
        alternateName: Swift.String? = nil,
        description: SchemaOrg.Range.Description? = nil,
        disambiguatingDescription: Swift.String? = nil,
        identifier: SchemaOrg.Range.Identifier? = nil,
        image: SchemaOrg.Range.Image? = nil,
        mainEntityOfPage: SchemaOrg.Range.MainEntityOfPage? = nil,
        name: Swift.String? = nil,
        owner: SchemaOrg.Range.Owner? = nil,
        potentialAction: SchemaOrg.Action? = nil,
        sameAs: RFC_3986.URI? = nil,
        subjectOf: SchemaOrg.Range.SubjectOf? = nil,
        url: RFC_3986.URI? = nil,
        additionalProperty: SchemaOrg.PropertyValue? = nil,
        address: SchemaOrg.Range.Address? = nil,
        aggregateRating: SchemaOrg.AggregateRating? = nil,
        amenityFeature: SchemaOrg.LocationFeatureSpecification? = nil,
        branchCode: Swift.String? = nil,
        containedIn: SchemaOrg.Place? = nil,
        containedInPlace: SchemaOrg.Place? = nil,
        containsPlace: SchemaOrg.Place? = nil,
        event: SchemaOrg.Event? = nil,
        events: SchemaOrg.Event? = nil,
        faxNumber: Swift.String? = nil,
        geo: SchemaOrg.Range.Geo? = nil,
        geoContains: SchemaOrg.Range.GeoContains? = nil,
        geoCoveredBy: SchemaOrg.Range.GeoCoveredBy? = nil,
        geoCovers: SchemaOrg.Range.GeoCovers? = nil,
        geoCrosses: SchemaOrg.Range.GeoCrosses? = nil,
        geoDisjoint: SchemaOrg.Range.GeoDisjoint? = nil,
        geoEquals: SchemaOrg.Range.GeoEquals? = nil,
        geoIntersects: SchemaOrg.Range.GeoIntersects? = nil,
        geoOverlaps: SchemaOrg.Range.GeoOverlaps? = nil,
        geoTouches: SchemaOrg.Range.GeoTouches? = nil,
        geoWithin: SchemaOrg.Range.GeoWithin? = nil,
        globalLocationNumber: Swift.String? = nil,
        hasCertification: SchemaOrg.Certification? = nil,
        hasDriveThroughService: Swift.Bool? = nil,
        hasGS1DigitalLink: RFC_3986.URI? = nil,
        hasMap: SchemaOrg.Range.HasMap? = nil,
        isAccessibleForFree: Swift.Bool? = nil,
        isicV4: Swift.String? = nil,
        keywords: SchemaOrg.Range.Keywords? = nil,
        latitude: SchemaOrg.Range.Latitude? = nil,
        logo: SchemaOrg.Range.Logo? = nil,
        longitude: SchemaOrg.Range.Longitude? = nil,
        map: RFC_3986.URI? = nil,
        maps: RFC_3986.URI? = nil,
        maximumAttendeeCapacity: Swift.Int? = nil,
        openingHoursSpecification: SchemaOrg.OpeningHoursSpecification? = nil,
        photo: SchemaOrg.Range.Photo? = nil,
        photos: SchemaOrg.Range.Photos? = nil,
        publicAccess: Swift.Bool? = nil,
        review: SchemaOrg.Review? = nil,
        reviews: SchemaOrg.Review? = nil,
        slogan: Swift.String? = nil,
        smokingAllowed: Swift.Bool? = nil,
        specialOpeningHoursSpecification: SchemaOrg.OpeningHoursSpecification? = nil,
        telephone: Swift.String? = nil,
        tourBookingPage: RFC_3986.URI? = nil
    ) {
        self.init(node: W3C_JSON_LD.Node(id: id, types: [Self.type]))
        self.additionalType = additionalType
        self.alternateName = alternateName
        self.description = description
        self.disambiguatingDescription = disambiguatingDescription
        self.identifier = identifier
        self.image = image
        self.mainEntityOfPage = mainEntityOfPage
        self.name = name
        self.owner = owner
        self.potentialAction = potentialAction
        self.sameAs = sameAs
        self.subjectOf = subjectOf
        self.url = url
        self.additionalProperty = additionalProperty
        self.address = address
        self.aggregateRating = aggregateRating
        self.amenityFeature = amenityFeature
        self.branchCode = branchCode
        self.containedIn = containedIn
        self.containedInPlace = containedInPlace
        self.containsPlace = containsPlace
        self.event = event
        self.events = events
        self.faxNumber = faxNumber
        self.geo = geo
        self.geoContains = geoContains
        self.geoCoveredBy = geoCoveredBy
        self.geoCovers = geoCovers
        self.geoCrosses = geoCrosses
        self.geoDisjoint = geoDisjoint
        self.geoEquals = geoEquals
        self.geoIntersects = geoIntersects
        self.geoOverlaps = geoOverlaps
        self.geoTouches = geoTouches
        self.geoWithin = geoWithin
        self.globalLocationNumber = globalLocationNumber
        self.hasCertification = hasCertification
        self.hasDriveThroughService = hasDriveThroughService
        self.hasGS1DigitalLink = hasGS1DigitalLink
        self.hasMap = hasMap
        self.isAccessibleForFree = isAccessibleForFree
        self.isicV4 = isicV4
        self.keywords = keywords
        self.latitude = latitude
        self.logo = logo
        self.longitude = longitude
        self.map = map
        self.maps = maps
        self.maximumAttendeeCapacity = maximumAttendeeCapacity
        self.openingHoursSpecification = openingHoursSpecification
        self.photo = photo
        self.photos = photos
        self.publicAccess = publicAccess
        self.review = review
        self.reviews = reviews
        self.slogan = slogan
        self.smokingAllowed = smokingAllowed
        self.specialOpeningHoursSpecification = specialOpeningHoursSpecification
        self.telephone = telephone
        self.tourBookingPage = tourBookingPage
    }
}
