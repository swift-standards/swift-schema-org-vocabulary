extension SchemaOrg {

    public struct RentalCarReservation: SchemaOrg.RentalCarReservation.`Protocol`, Swift.Hashable {

        public static let type = "RentalCarReservation"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.RentalCarReservation {

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
        dropoffLocation: SchemaOrg.Place? = nil,
        dropoffTime: ISO_8601.DateTime? = nil,
        pickupLocation: SchemaOrg.Place? = nil,
        pickupTime: ISO_8601.DateTime? = nil,
        bookingAgent: SchemaOrg.Range.BookingAgent? = nil,
        bookingTime: ISO_8601.DateTime? = nil,
        broker: SchemaOrg.Range.Broker? = nil,
        modifiedTime: ISO_8601.DateTime? = nil,
        priceCurrency: Swift.String? = nil,
        programMembershipUsed: SchemaOrg.ProgramMembership? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        reservationFor: SchemaOrg.Thing? = nil,
        reservationId: Swift.String? = nil,
        reservationStatus: SchemaOrg.ReservationStatusType? = nil,
        reservedTicket: SchemaOrg.Ticket? = nil,
        totalPrice: SchemaOrg.Range.TotalPrice? = nil,
        underName: SchemaOrg.Range.UnderName? = nil
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
        self.dropoffLocation = dropoffLocation
        self.dropoffTime = dropoffTime
        self.pickupLocation = pickupLocation
        self.pickupTime = pickupTime
        self.bookingAgent = bookingAgent
        self.bookingTime = bookingTime
        self.broker = broker
        self.modifiedTime = modifiedTime
        self.priceCurrency = priceCurrency
        self.programMembershipUsed = programMembershipUsed
        self.provider = provider
        self.reservationFor = reservationFor
        self.reservationId = reservationId
        self.reservationStatus = reservationStatus
        self.reservedTicket = reservedTicket
        self.totalPrice = totalPrice
        self.underName = underName
    }
}
