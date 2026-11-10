extension SchemaOrg.MedicalTrial {

    public protocol `Protocol`: SchemaOrg.MedicalStudy.`Protocol` {}
}

extension SchemaOrg.MedicalTrial.`Protocol` {

    public var trialDesign: SchemaOrg.MedicalTrialDesign? {
        get { self[first: "trialDesign"] }
        set { self[first: "trialDesign"] = newValue }
    }
}
