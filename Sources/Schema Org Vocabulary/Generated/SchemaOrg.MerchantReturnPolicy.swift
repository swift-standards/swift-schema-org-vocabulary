extension SchemaOrg {

    public struct MerchantReturnPolicy: SchemaOrg.MerchantReturnPolicy.`Protocol`, Swift.Hashable {

        public static let type = "MerchantReturnPolicy"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.MerchantReturnPolicy {

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
        additionalProperty: SchemaOrg.PropertyValue? = nil,
        applicableCountry: SchemaOrg.Range.ApplicableCountry? = nil,
        customerRemorseReturnFees: SchemaOrg.ReturnFeesEnumeration? = nil,
        customerRemorseReturnLabelSource: SchemaOrg.ReturnLabelSourceEnumeration? = nil,
        customerRemorseReturnShippingFeesAmount: SchemaOrg.MonetaryAmount? = nil,
        inStoreReturnsOffered: Swift.Bool? = nil,
        itemCondition: SchemaOrg.OfferItemCondition? = nil,
        itemDefectReturnFees: SchemaOrg.ReturnFeesEnumeration? = nil,
        itemDefectReturnLabelSource: SchemaOrg.ReturnLabelSourceEnumeration? = nil,
        itemDefectReturnShippingFeesAmount: SchemaOrg.MonetaryAmount? = nil,
        merchantReturnDays: SchemaOrg.Range.MerchantReturnDays? = nil,
        merchantReturnLink: RFC_3986.URI? = nil,
        refundType: SchemaOrg.RefundTypeEnumeration? = nil,
        restockingFee: SchemaOrg.Range.RestockingFee? = nil,
        returnFees: SchemaOrg.ReturnFeesEnumeration? = nil,
        returnLabelSource: SchemaOrg.ReturnLabelSourceEnumeration? = nil,
        returnMethod: SchemaOrg.ReturnMethodEnumeration? = nil,
        returnPolicyCategory: SchemaOrg.MerchantReturnEnumeration? = nil,
        returnPolicyCountry: SchemaOrg.Range.ReturnPolicyCountry? = nil,
        returnPolicySeasonalOverride: SchemaOrg.MerchantReturnPolicySeasonalOverride? = nil,
        returnShippingFeesAmount: SchemaOrg.MonetaryAmount? = nil,
        validForMemberTier: SchemaOrg.MemberProgramTier? = nil
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
        self.additionalProperty = additionalProperty
        self.applicableCountry = applicableCountry
        self.customerRemorseReturnFees = customerRemorseReturnFees
        self.customerRemorseReturnLabelSource = customerRemorseReturnLabelSource
        self.customerRemorseReturnShippingFeesAmount = customerRemorseReturnShippingFeesAmount
        self.inStoreReturnsOffered = inStoreReturnsOffered
        self.itemCondition = itemCondition
        self.itemDefectReturnFees = itemDefectReturnFees
        self.itemDefectReturnLabelSource = itemDefectReturnLabelSource
        self.itemDefectReturnShippingFeesAmount = itemDefectReturnShippingFeesAmount
        self.merchantReturnDays = merchantReturnDays
        self.merchantReturnLink = merchantReturnLink
        self.refundType = refundType
        self.restockingFee = restockingFee
        self.returnFees = returnFees
        self.returnLabelSource = returnLabelSource
        self.returnMethod = returnMethod
        self.returnPolicyCategory = returnPolicyCategory
        self.returnPolicyCountry = returnPolicyCountry
        self.returnPolicySeasonalOverride = returnPolicySeasonalOverride
        self.returnShippingFeesAmount = returnShippingFeesAmount
        self.validForMemberTier = validForMemberTier
    }
}
