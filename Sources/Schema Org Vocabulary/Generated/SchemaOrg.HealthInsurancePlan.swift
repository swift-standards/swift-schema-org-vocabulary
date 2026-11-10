extension SchemaOrg {

    public struct HealthInsurancePlan: SchemaOrg.HealthInsurancePlan.`Protocol`, Swift.Hashable {

        public static let type = "HealthInsurancePlan"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.HealthInsurancePlan {

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
        benefitsSummaryUrl: RFC_3986.URI? = nil,
        contactPoint: SchemaOrg.ContactPoint? = nil,
        healthPlanDrugOption: Swift.String? = nil,
        healthPlanDrugTier: Swift.String? = nil,
        healthPlanId: Swift.String? = nil,
        healthPlanMarketingUrl: RFC_3986.URI? = nil,
        includesHealthPlanFormulary: SchemaOrg.HealthPlanFormulary? = nil,
        includesHealthPlanNetwork: SchemaOrg.HealthPlanNetwork? = nil,
        usesHealthPlanIdStandard: SchemaOrg.Range.UsesHealthPlanIdStandard? = nil
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
        self.benefitsSummaryUrl = benefitsSummaryUrl
        self.contactPoint = contactPoint
        self.healthPlanDrugOption = healthPlanDrugOption
        self.healthPlanDrugTier = healthPlanDrugTier
        self.healthPlanId = healthPlanId
        self.healthPlanMarketingUrl = healthPlanMarketingUrl
        self.includesHealthPlanFormulary = includesHealthPlanFormulary
        self.includesHealthPlanNetwork = includesHealthPlanNetwork
        self.usesHealthPlanIdStandard = usesHealthPlanIdStandard
    }
}
