extension SchemaOrg {

    public struct MerchantReturnPolicySeasonalOverride: SchemaOrg.MerchantReturnPolicySeasonalOverride.`Protocol`, Swift.Hashable {

        public static let type = "MerchantReturnPolicySeasonalOverride"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.MerchantReturnPolicySeasonalOverride {

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
        endDate: SchemaOrg.Range.EndDate? = nil,
        merchantReturnDays: SchemaOrg.Range.MerchantReturnDays? = nil,
        refundType: SchemaOrg.RefundTypeEnumeration? = nil,
        restockingFee: SchemaOrg.Range.RestockingFee? = nil,
        returnFees: SchemaOrg.ReturnFeesEnumeration? = nil,
        returnMethod: SchemaOrg.ReturnMethodEnumeration? = nil,
        returnPolicyCategory: SchemaOrg.MerchantReturnEnumeration? = nil,
        returnShippingFeesAmount: SchemaOrg.MonetaryAmount? = nil,
        startDate: SchemaOrg.Range.StartDate? = nil
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
        self.endDate = endDate
        self.merchantReturnDays = merchantReturnDays
        self.refundType = refundType
        self.restockingFee = restockingFee
        self.returnFees = returnFees
        self.returnMethod = returnMethod
        self.returnPolicyCategory = returnPolicyCategory
        self.returnShippingFeesAmount = returnShippingFeesAmount
        self.startDate = startDate
    }
}
