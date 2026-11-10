extension SchemaOrg {

    public struct TrainTrip: SchemaOrg.TrainTrip.`Protocol`, Swift.Hashable {

        public static let type = "TrainTrip"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.TrainTrip {

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
        arrivalPlatform: Swift.String? = nil,
        arrivalStation: SchemaOrg.TrainStation? = nil,
        departurePlatform: Swift.String? = nil,
        departureStation: SchemaOrg.TrainStation? = nil,
        trainName: Swift.String? = nil,
        trainNumber: Swift.String? = nil,
        arrivalTime: SchemaOrg.Range.ArrivalTime? = nil,
        departureTime: SchemaOrg.Range.DepartureTime? = nil,
        itinerary: SchemaOrg.Range.Itinerary? = nil,
        offers: SchemaOrg.Range.Offers? = nil,
        partOfTrip: SchemaOrg.Trip? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        subTrip: SchemaOrg.Trip? = nil,
        tripOrigin: SchemaOrg.Place? = nil
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
        self.arrivalPlatform = arrivalPlatform
        self.arrivalStation = arrivalStation
        self.departurePlatform = departurePlatform
        self.departureStation = departureStation
        self.trainName = trainName
        self.trainNumber = trainNumber
        self.arrivalTime = arrivalTime
        self.departureTime = departureTime
        self.itinerary = itinerary
        self.offers = offers
        self.partOfTrip = partOfTrip
        self.provider = provider
        self.subTrip = subTrip
        self.tripOrigin = tripOrigin
    }
}
