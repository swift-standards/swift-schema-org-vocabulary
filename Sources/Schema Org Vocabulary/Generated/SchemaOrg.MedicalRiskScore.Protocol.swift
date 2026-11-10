extension SchemaOrg.MedicalRiskScore {

    public protocol `Protocol`: SchemaOrg.MedicalRiskEstimator.`Protocol` {}
}

extension SchemaOrg.MedicalRiskScore.`Protocol` {

    public var algorithm: Swift.String? {
        get { self[first: "algorithm"] }
        set { self[first: "algorithm"] = newValue }
    }
}
