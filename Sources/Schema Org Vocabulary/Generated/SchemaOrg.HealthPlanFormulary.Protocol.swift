extension SchemaOrg.HealthPlanFormulary {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.HealthPlanCostSharing,
        SchemaOrg.Domain.HealthPlanDrugTier
    {}
}

extension SchemaOrg.HealthPlanFormulary.`Protocol` {

    public var offersPrescriptionByMail: Swift.Bool? {
        get { self[first: "offersPrescriptionByMail"] }
        set { self[first: "offersPrescriptionByMail"] = newValue }
    }
}
