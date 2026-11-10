extension SchemaOrg.MedicalRiskFactor {

    public protocol `Protocol`: SchemaOrg.MedicalEntity.`Protocol` {}
}

extension SchemaOrg.MedicalRiskFactor.`Protocol` {

    public var increasesRiskOf: SchemaOrg.MedicalEntity? {
        get { self[first: "increasesRiskOf"] }
        set { self[first: "increasesRiskOf"] = newValue }
    }
}
