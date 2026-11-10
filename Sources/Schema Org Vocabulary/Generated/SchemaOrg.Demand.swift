extension SchemaOrg {

    public struct Demand: SchemaOrg.Demand.`Protocol`, Swift.Hashable {

        public static let type = "Demand"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Demand {

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
        acceptedPaymentMethod: SchemaOrg.Range.AcceptedPaymentMethod? = nil,
        advanceBookingRequirement: SchemaOrg.QuantitativeValue? = nil,
        areaServed: SchemaOrg.Range.AreaServed? = nil,
        asin: SchemaOrg.Range.Asin? = nil,
        availability: SchemaOrg.ItemAvailability? = nil,
        availabilityEnds: SchemaOrg.Range.AvailabilityEnds? = nil,
        availabilityStarts: SchemaOrg.Range.AvailabilityStarts? = nil,
        availableAtOrFrom: SchemaOrg.Place? = nil,
        availableDeliveryMethod: SchemaOrg.DeliveryMethod? = nil,
        businessFunction: SchemaOrg.BusinessFunction? = nil,
        deliveryLeadTime: SchemaOrg.QuantitativeValue? = nil,
        eligibleCustomerType: SchemaOrg.BusinessEntityType? = nil,
        eligibleDuration: SchemaOrg.QuantitativeValue? = nil,
        eligibleQuantity: SchemaOrg.QuantitativeValue? = nil,
        eligibleRegion: SchemaOrg.Range.EligibleRegion? = nil,
        eligibleTransactionVolume: SchemaOrg.PriceSpecification? = nil,
        gtin: SchemaOrg.Range.Gtin? = nil,
        gtin12: Swift.String? = nil,
        gtin13: Swift.String? = nil,
        gtin14: Swift.String? = nil,
        gtin8: Swift.String? = nil,
        includesObject: SchemaOrg.TypeAndQuantityNode? = nil,
        ineligibleRegion: SchemaOrg.Range.IneligibleRegion? = nil,
        inventoryLevel: SchemaOrg.QuantitativeValue? = nil,
        itemCondition: SchemaOrg.OfferItemCondition? = nil,
        itemOffered: SchemaOrg.Range.ItemOffered? = nil,
        mpn: Swift.String? = nil,
        priceSpecification: SchemaOrg.PriceSpecification? = nil,
        seller: SchemaOrg.Range.Seller? = nil,
        serialNumber: Swift.String? = nil,
        sku: Swift.String? = nil,
        validFrom: SchemaOrg.Range.ValidFrom? = nil,
        validThrough: SchemaOrg.Range.ValidThrough? = nil,
        warranty: SchemaOrg.WarrantyPromise? = nil
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
        self.acceptedPaymentMethod = acceptedPaymentMethod
        self.advanceBookingRequirement = advanceBookingRequirement
        self.areaServed = areaServed
        self.asin = asin
        self.availability = availability
        self.availabilityEnds = availabilityEnds
        self.availabilityStarts = availabilityStarts
        self.availableAtOrFrom = availableAtOrFrom
        self.availableDeliveryMethod = availableDeliveryMethod
        self.businessFunction = businessFunction
        self.deliveryLeadTime = deliveryLeadTime
        self.eligibleCustomerType = eligibleCustomerType
        self.eligibleDuration = eligibleDuration
        self.eligibleQuantity = eligibleQuantity
        self.eligibleRegion = eligibleRegion
        self.eligibleTransactionVolume = eligibleTransactionVolume
        self.gtin = gtin
        self.gtin12 = gtin12
        self.gtin13 = gtin13
        self.gtin14 = gtin14
        self.gtin8 = gtin8
        self.includesObject = includesObject
        self.ineligibleRegion = ineligibleRegion
        self.inventoryLevel = inventoryLevel
        self.itemCondition = itemCondition
        self.itemOffered = itemOffered
        self.mpn = mpn
        self.priceSpecification = priceSpecification
        self.seller = seller
        self.serialNumber = serialNumber
        self.sku = sku
        self.validFrom = validFrom
        self.validThrough = validThrough
        self.warranty = warranty
    }
}
