extension SchemaOrg.MedicalRiskEstimator {

    public protocol `Protocol`: SchemaOrg.MedicalEntity.`Protocol` {}
}

extension SchemaOrg.MedicalRiskEstimator.`Protocol` {

    public var estimatesRiskOf: SchemaOrg.MedicalEntity? {
        get { self[first: "estimatesRiskOf"] }
        set { self[first: "estimatesRiskOf"] = newValue }
    }

    public var includedRiskFactor: SchemaOrg.MedicalRiskFactor? {
        get { self[first: "includedRiskFactor"] }
        set { self[first: "includedRiskFactor"] = newValue }
    }
}
