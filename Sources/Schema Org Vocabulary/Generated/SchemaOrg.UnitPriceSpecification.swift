extension SchemaOrg {

    public struct UnitPriceSpecification: SchemaOrg.UnitPriceSpecification.`Protocol`, Swift.Hashable {

        public static let type = "UnitPriceSpecification"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.UnitPriceSpecification {

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
        billingDuration: SchemaOrg.Range.BillingDuration? = nil,
        billingIncrement: Swift.Double? = nil,
        billingStart: Swift.Double? = nil,
        priceComponentType: SchemaOrg.PriceComponentTypeEnumeration? = nil,
        priceType: SchemaOrg.Range.PriceType? = nil,
        referenceQuantity: SchemaOrg.QuantitativeValue? = nil,
        unitCode: SchemaOrg.Range.UnitCode? = nil,
        unitText: Swift.String? = nil,
        eligibleQuantity: SchemaOrg.QuantitativeValue? = nil,
        eligibleTransactionVolume: SchemaOrg.PriceSpecification? = nil,
        maxPrice: Swift.Double? = nil,
        membershipPointsEarned: SchemaOrg.Range.MembershipPointsEarned? = nil,
        minPrice: Swift.Double? = nil,
        price: SchemaOrg.Range.Price? = nil,
        priceCurrency: Swift.String? = nil,
        validForMemberTier: SchemaOrg.MemberProgramTier? = nil,
        validFrom: SchemaOrg.Range.ValidFrom? = nil,
        validThrough: SchemaOrg.Range.ValidThrough? = nil,
        valueAddedTaxIncluded: Swift.Bool? = nil
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
        self.billingDuration = billingDuration
        self.billingIncrement = billingIncrement
        self.billingStart = billingStart
        self.priceComponentType = priceComponentType
        self.priceType = priceType
        self.referenceQuantity = referenceQuantity
        self.unitCode = unitCode
        self.unitText = unitText
        self.eligibleQuantity = eligibleQuantity
        self.eligibleTransactionVolume = eligibleTransactionVolume
        self.maxPrice = maxPrice
        self.membershipPointsEarned = membershipPointsEarned
        self.minPrice = minPrice
        self.price = price
        self.priceCurrency = priceCurrency
        self.validForMemberTier = validForMemberTier
        self.validFrom = validFrom
        self.validThrough = validThrough
        self.valueAddedTaxIncluded = valueAddedTaxIncluded
    }
}
