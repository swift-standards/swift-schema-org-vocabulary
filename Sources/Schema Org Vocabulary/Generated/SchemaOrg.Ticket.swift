extension SchemaOrg {

    public struct Ticket: SchemaOrg.Ticket.`Protocol`, Swift.Hashable {

        public static let type = "Ticket"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Ticket {

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
        dateIssued: SchemaOrg.Range.DateIssued? = nil,
        issuedBy: SchemaOrg.Organization? = nil,
        priceCurrency: Swift.String? = nil,
        ticketNumber: Swift.String? = nil,
        ticketToken: SchemaOrg.Range.TicketToken? = nil,
        ticketedSeat: SchemaOrg.Seat? = nil,
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
        self.dateIssued = dateIssued
        self.issuedBy = issuedBy
        self.priceCurrency = priceCurrency
        self.ticketNumber = ticketNumber
        self.ticketToken = ticketToken
        self.ticketedSeat = ticketedSeat
        self.totalPrice = totalPrice
        self.underName = underName
    }
}
