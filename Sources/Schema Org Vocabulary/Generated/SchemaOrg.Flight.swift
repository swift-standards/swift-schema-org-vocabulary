extension SchemaOrg {

    public struct Flight: SchemaOrg.Flight.`Protocol`, Swift.Hashable {

        public static let type = "Flight"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Flight {

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
        aircraft: SchemaOrg.Range.Aircraft? = nil,
        arrivalAirport: SchemaOrg.Airport? = nil,
        arrivalGate: Swift.String? = nil,
        arrivalTerminal: Swift.String? = nil,
        boardingPolicy: SchemaOrg.BoardingPolicyType? = nil,
        carrier: SchemaOrg.Organization? = nil,
        departureAirport: SchemaOrg.Airport? = nil,
        departureGate: Swift.String? = nil,
        departureTerminal: Swift.String? = nil,
        estimatedFlightDuration: SchemaOrg.Range.EstimatedFlightDuration? = nil,
        flightDistance: SchemaOrg.Range.FlightDistance? = nil,
        flightNumber: Swift.String? = nil,
        mealService: Swift.String? = nil,
        seller: SchemaOrg.Range.Seller? = nil,
        webCheckinTime: ISO_8601.DateTime? = nil,
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
        self.aircraft = aircraft
        self.arrivalAirport = arrivalAirport
        self.arrivalGate = arrivalGate
        self.arrivalTerminal = arrivalTerminal
        self.boardingPolicy = boardingPolicy
        self.carrier = carrier
        self.departureAirport = departureAirport
        self.departureGate = departureGate
        self.departureTerminal = departureTerminal
        self.estimatedFlightDuration = estimatedFlightDuration
        self.flightDistance = flightDistance
        self.flightNumber = flightNumber
        self.mealService = mealService
        self.seller = seller
        self.webCheckinTime = webCheckinTime
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
