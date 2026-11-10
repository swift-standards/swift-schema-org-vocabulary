extension SchemaOrg {

    public struct FinancialIncentive: SchemaOrg.FinancialIncentive.`Protocol`, Swift.Hashable {

        public static let type = "FinancialIncentive"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.FinancialIncentive {

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
        areaServed: SchemaOrg.Range.AreaServed? = nil,
        eligibleWithSupplier: SchemaOrg.Organization? = nil,
        incentiveAmount: SchemaOrg.Range.IncentiveAmount? = nil,
        incentiveStatus: SchemaOrg.IncentiveStatus? = nil,
        incentiveType: SchemaOrg.IncentiveType? = nil,
        incentivizedItem: SchemaOrg.Range.IncentivizedItem? = nil,
        incomeLimit: SchemaOrg.Range.IncomeLimit? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        publisher: SchemaOrg.Range.Publisher? = nil,
        purchasePriceLimit: SchemaOrg.MonetaryAmount? = nil,
        purchaseType: SchemaOrg.PurchaseType? = nil,
        qualifiedExpense: SchemaOrg.IncentiveQualifiedExpenseType? = nil,
        validFrom: SchemaOrg.Range.ValidFrom? = nil,
        validThrough: SchemaOrg.Range.ValidThrough? = nil
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
        self.areaServed = areaServed
        self.eligibleWithSupplier = eligibleWithSupplier
        self.incentiveAmount = incentiveAmount
        self.incentiveStatus = incentiveStatus
        self.incentiveType = incentiveType
        self.incentivizedItem = incentivizedItem
        self.incomeLimit = incomeLimit
        self.provider = provider
        self.publisher = publisher
        self.purchasePriceLimit = purchasePriceLimit
        self.purchaseType = purchaseType
        self.qualifiedExpense = qualifiedExpense
        self.validFrom = validFrom
        self.validThrough = validThrough
    }
}
