extension SchemaOrg {

    public struct PaymentCard: SchemaOrg.PaymentCard.`Protocol`, Swift.Hashable {

        public static let type = "PaymentCard"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.PaymentCard {

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
        cashBack: SchemaOrg.Range.CashBack? = nil,
        contactlessPayment: Swift.Bool? = nil,
        floorLimit: SchemaOrg.MonetaryAmount? = nil,
        monthlyMinimumRepaymentAmount: SchemaOrg.Range.MonthlyMinimumRepaymentAmount? = nil,
        annualPercentageRate: SchemaOrg.Range.AnnualPercentageRate? = nil,
        feesAndCommissionsSpecification: SchemaOrg.Range.FeesAndCommissionsSpecification? = nil,
        interestRate: SchemaOrg.Range.InterestRate? = nil,
        paymentMethodType: SchemaOrg.PaymentMethodType? = nil,
        aggregateRating: SchemaOrg.AggregateRating? = nil,
        areaServed: SchemaOrg.Range.AreaServed? = nil,
        audience: SchemaOrg.Audience? = nil,
        availableChannel: SchemaOrg.ServiceChannel? = nil,
        award: Swift.String? = nil,
        brand: SchemaOrg.Range.Brand? = nil,
        broker: SchemaOrg.Range.Broker? = nil,
        category: SchemaOrg.Range.Category? = nil,
        hasCertification: SchemaOrg.Certification? = nil,
        hasOfferCatalog: SchemaOrg.OfferCatalog? = nil,
        hoursAvailable: SchemaOrg.OpeningHoursSpecification? = nil,
        isRelatedTo: SchemaOrg.Range.IsRelatedTo? = nil,
        isSimilarTo: SchemaOrg.Range.IsSimilarTo? = nil,
        logo: SchemaOrg.Range.Logo? = nil,
        offers: SchemaOrg.Range.Offers? = nil,
        produces: SchemaOrg.Thing? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        providerMobility: Swift.String? = nil,
        review: SchemaOrg.Review? = nil,
        serviceArea: SchemaOrg.Range.ServiceArea? = nil,
        serviceAudience: SchemaOrg.Audience? = nil,
        serviceOutput: SchemaOrg.Thing? = nil,
        serviceType: SchemaOrg.Range.ServiceType? = nil,
        slogan: Swift.String? = nil,
        termsOfService: SchemaOrg.Range.TermsOfService? = nil
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
        self.cashBack = cashBack
        self.contactlessPayment = contactlessPayment
        self.floorLimit = floorLimit
        self.monthlyMinimumRepaymentAmount = monthlyMinimumRepaymentAmount
        self.annualPercentageRate = annualPercentageRate
        self.feesAndCommissionsSpecification = feesAndCommissionsSpecification
        self.interestRate = interestRate
        self.paymentMethodType = paymentMethodType
        self.aggregateRating = aggregateRating
        self.areaServed = areaServed
        self.audience = audience
        self.availableChannel = availableChannel
        self.award = award
        self.brand = brand
        self.broker = broker
        self.category = category
        self.hasCertification = hasCertification
        self.hasOfferCatalog = hasOfferCatalog
        self.hoursAvailable = hoursAvailable
        self.isRelatedTo = isRelatedTo
        self.isSimilarTo = isSimilarTo
        self.logo = logo
        self.offers = offers
        self.produces = produces
        self.provider = provider
        self.providerMobility = providerMobility
        self.review = review
        self.serviceArea = serviceArea
        self.serviceAudience = serviceAudience
        self.serviceOutput = serviceOutput
        self.serviceType = serviceType
        self.slogan = slogan
        self.termsOfService = termsOfService
    }
}
