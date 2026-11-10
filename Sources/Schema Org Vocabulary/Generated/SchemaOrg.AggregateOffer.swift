extension SchemaOrg {

    public struct AggregateOffer: SchemaOrg.AggregateOffer.`Protocol`, Swift.Hashable {

        public static let type = "AggregateOffer"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.AggregateOffer {

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
        highPrice: SchemaOrg.Range.HighPrice? = nil,
        lowPrice: SchemaOrg.Range.LowPrice? = nil,
        offerCount: Swift.Int? = nil,
        offers: SchemaOrg.Range.Offers? = nil,
        acceptedPaymentMethod: SchemaOrg.Range.AcceptedPaymentMethod? = nil,
        addOn: SchemaOrg.Offer? = nil,
        additionalProperty: SchemaOrg.PropertyValue? = nil,
        advanceBookingRequirement: SchemaOrg.QuantitativeValue? = nil,
        aggregateRating: SchemaOrg.AggregateRating? = nil,
        areaServed: SchemaOrg.Range.AreaServed? = nil,
        asin: SchemaOrg.Range.Asin? = nil,
        availability: SchemaOrg.ItemAvailability? = nil,
        availabilityEnds: SchemaOrg.Range.AvailabilityEnds? = nil,
        availabilityStarts: SchemaOrg.Range.AvailabilityStarts? = nil,
        availableAtOrFrom: SchemaOrg.Place? = nil,
        availableDeliveryMethod: SchemaOrg.DeliveryMethod? = nil,
        businessFunction: SchemaOrg.BusinessFunction? = nil,
        category: SchemaOrg.Range.Category? = nil,
        checkoutPageURLTemplate: Swift.String? = nil,
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
        hasAdultConsideration: SchemaOrg.AdultOrientedEnumeration? = nil,
        hasDigitalProductPassport: SchemaOrg.Range.HasDigitalProductPassport? = nil,
        hasGS1DigitalLink: RFC_3986.URI? = nil,
        hasMeasurement: SchemaOrg.QuantitativeValue? = nil,
        hasMerchantReturnPolicy: SchemaOrg.MerchantReturnPolicy? = nil,
        includesObject: SchemaOrg.TypeAndQuantityNode? = nil,
        ineligibleRegion: SchemaOrg.Range.IneligibleRegion? = nil,
        inventoryLevel: SchemaOrg.QuantitativeValue? = nil,
        isFamilyFriendly: Swift.Bool? = nil,
        itemCondition: SchemaOrg.OfferItemCondition? = nil,
        itemOffered: SchemaOrg.Range.ItemOffered? = nil,
        itemPopularity: SchemaOrg.Range.ItemPopularity? = nil,
        leaseLength: SchemaOrg.Range.LeaseLength? = nil,
        mobileUrl: Swift.String? = nil,
        mpn: Swift.String? = nil,
        offeredBy: SchemaOrg.Range.OfferedBy? = nil,
        price: SchemaOrg.Range.Price? = nil,
        priceCurrency: Swift.String? = nil,
        priceSpecification: SchemaOrg.PriceSpecification? = nil,
        priceValidUntil: ISO_8601.CalendarDate? = nil,
        review: SchemaOrg.Review? = nil,
        reviews: SchemaOrg.Review? = nil,
        seller: SchemaOrg.Range.Seller? = nil,
        serialNumber: Swift.String? = nil,
        shippingDetails: SchemaOrg.OfferShippingDetails? = nil,
        sku: Swift.String? = nil,
        validForMemberTier: SchemaOrg.MemberProgramTier? = nil,
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
        self.highPrice = highPrice
        self.lowPrice = lowPrice
        self.offerCount = offerCount
        self.offers = offers
        self.acceptedPaymentMethod = acceptedPaymentMethod
        self.addOn = addOn
        self.additionalProperty = additionalProperty
        self.advanceBookingRequirement = advanceBookingRequirement
        self.aggregateRating = aggregateRating
        self.areaServed = areaServed
        self.asin = asin
        self.availability = availability
        self.availabilityEnds = availabilityEnds
        self.availabilityStarts = availabilityStarts
        self.availableAtOrFrom = availableAtOrFrom
        self.availableDeliveryMethod = availableDeliveryMethod
        self.businessFunction = businessFunction
        self.category = category
        self.checkoutPageURLTemplate = checkoutPageURLTemplate
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
        self.hasAdultConsideration = hasAdultConsideration
        self.hasDigitalProductPassport = hasDigitalProductPassport
        self.hasGS1DigitalLink = hasGS1DigitalLink
        self.hasMeasurement = hasMeasurement
        self.hasMerchantReturnPolicy = hasMerchantReturnPolicy
        self.includesObject = includesObject
        self.ineligibleRegion = ineligibleRegion
        self.inventoryLevel = inventoryLevel
        self.isFamilyFriendly = isFamilyFriendly
        self.itemCondition = itemCondition
        self.itemOffered = itemOffered
        self.itemPopularity = itemPopularity
        self.leaseLength = leaseLength
        self.mobileUrl = mobileUrl
        self.mpn = mpn
        self.offeredBy = offeredBy
        self.price = price
        self.priceCurrency = priceCurrency
        self.priceSpecification = priceSpecification
        self.priceValidUntil = priceValidUntil
        self.review = review
        self.reviews = reviews
        self.seller = seller
        self.serialNumber = serialNumber
        self.shippingDetails = shippingDetails
        self.sku = sku
        self.validForMemberTier = validForMemberTier
        self.validFrom = validFrom
        self.validThrough = validThrough
        self.warranty = warranty
    }
}
