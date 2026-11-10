extension SchemaOrg.HealthInsurancePlan {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.ContactPoint,
        SchemaOrg.Domain.HealthPlanDrugTier
    {}
}

extension SchemaOrg.HealthInsurancePlan.`Protocol` {

    public var benefitsSummaryUrl: RFC_3986.URI? {
        get { self[first: "benefitsSummaryUrl"] }
        set { self[first: "benefitsSummaryUrl"] = newValue }
    }

    public var healthPlanDrugOption: Swift.String? {
        get { self[first: "healthPlanDrugOption"] }
        set { self[first: "healthPlanDrugOption"] = newValue }
    }

    public var healthPlanId: Swift.String? {
        get { self[first: "healthPlanId"] }
        set { self[first: "healthPlanId"] = newValue }
    }

    public var healthPlanMarketingUrl: RFC_3986.URI? {
        get { self[first: "healthPlanMarketingUrl"] }
        set { self[first: "healthPlanMarketingUrl"] = newValue }
    }

    public var includesHealthPlanFormulary: SchemaOrg.HealthPlanFormulary? {
        get { self[first: "includesHealthPlanFormulary"] }
        set { self[first: "includesHealthPlanFormulary"] = newValue }
    }

    public var includesHealthPlanNetwork: SchemaOrg.HealthPlanNetwork? {
        get { self[first: "includesHealthPlanNetwork"] }
        set { self[first: "includesHealthPlanNetwork"] = newValue }
    }

    public var usesHealthPlanIdStandard: SchemaOrg.Range.UsesHealthPlanIdStandard? {
        get { self[first: "usesHealthPlanIdStandard"] }
        set { self[first: "usesHealthPlanIdStandard"] = newValue }
    }
}
