extension SchemaOrg {

    public struct ParcelDelivery: SchemaOrg.ParcelDelivery.`Protocol`, Swift.Hashable {

        public static let type = "ParcelDelivery"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ParcelDelivery {

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
        carrier: SchemaOrg.Organization? = nil,
        deliveryAddress: SchemaOrg.PostalAddress? = nil,
        deliveryStatus: SchemaOrg.DeliveryEvent? = nil,
        expectedArrivalFrom: SchemaOrg.Range.ExpectedArrivalFrom? = nil,
        expectedArrivalUntil: SchemaOrg.Range.ExpectedArrivalUntil? = nil,
        hasDeliveryMethod: SchemaOrg.DeliveryMethod? = nil,
        itemShipped: SchemaOrg.Product? = nil,
        originAddress: SchemaOrg.PostalAddress? = nil,
        partOfOrder: SchemaOrg.Order? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        trackingNumber: Swift.String? = nil,
        trackingUrl: RFC_3986.URI? = nil
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
        self.carrier = carrier
        self.deliveryAddress = deliveryAddress
        self.deliveryStatus = deliveryStatus
        self.expectedArrivalFrom = expectedArrivalFrom
        self.expectedArrivalUntil = expectedArrivalUntil
        self.hasDeliveryMethod = hasDeliveryMethod
        self.itemShipped = itemShipped
        self.originAddress = originAddress
        self.partOfOrder = partOfOrder
        self.provider = provider
        self.trackingNumber = trackingNumber
        self.trackingUrl = trackingUrl
    }
}
