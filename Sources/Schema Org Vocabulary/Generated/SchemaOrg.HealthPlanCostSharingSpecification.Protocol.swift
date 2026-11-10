extension SchemaOrg.HealthPlanCostSharingSpecification {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.HealthPlanCostSharingSpecification.`Protocol` {

    public var healthPlanCoinsuranceOption: Swift.String? {
        get { self[first: "healthPlanCoinsuranceOption"] }
        set { self[first: "healthPlanCoinsuranceOption"] = newValue }
    }

    public var healthPlanCoinsuranceRate: Swift.Double? {
        get { self[first: "healthPlanCoinsuranceRate"] }
        set { self[first: "healthPlanCoinsuranceRate"] = newValue }
    }

    public var healthPlanCopay: SchemaOrg.PriceSpecification? {
        get { self[first: "healthPlanCopay"] }
        set { self[first: "healthPlanCopay"] = newValue }
    }

    public var healthPlanCopayOption: Swift.String? {
        get { self[first: "healthPlanCopayOption"] }
        set { self[first: "healthPlanCopayOption"] = newValue }
    }

    public var healthPlanPharmacyCategory: Swift.String? {
        get { self[first: "healthPlanPharmacyCategory"] }
        set { self[first: "healthPlanPharmacyCategory"] = newValue }
    }
}
