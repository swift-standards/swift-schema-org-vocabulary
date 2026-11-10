extension SchemaOrg.MedicalCondition {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.AssociatedAnatomy,
        SchemaOrg.Domain.Drug,
        SchemaOrg.Domain.Epidemiology,
        SchemaOrg.Domain.Pathophysiology,
        SchemaOrg.Domain.PossibleTreatment,
        SchemaOrg.Domain.Status
    {}
}

extension SchemaOrg.MedicalCondition.`Protocol` {

    public var cause: SchemaOrg.MedicalCause? {
        get { self[first: "cause"] }
        set { self[first: "cause"] = newValue }
    }

    public var differentialDiagnosis: SchemaOrg.DDxElement? {
        get { self[first: "differentialDiagnosis"] }
        set { self[first: "differentialDiagnosis"] = newValue }
    }

    public var expectedPrognosis: Swift.String? {
        get { self[first: "expectedPrognosis"] }
        set { self[first: "expectedPrognosis"] = newValue }
    }

    public var naturalProgression: Swift.String? {
        get { self[first: "naturalProgression"] }
        set { self[first: "naturalProgression"] = newValue }
    }

    public var possibleComplication: Swift.String? {
        get { self[first: "possibleComplication"] }
        set { self[first: "possibleComplication"] = newValue }
    }

    public var primaryPrevention: SchemaOrg.MedicalTherapy? {
        get { self[first: "primaryPrevention"] }
        set { self[first: "primaryPrevention"] = newValue }
    }

    public var riskFactor: SchemaOrg.MedicalRiskFactor? {
        get { self[first: "riskFactor"] }
        set { self[first: "riskFactor"] = newValue }
    }

    public var secondaryPrevention: SchemaOrg.Range.SecondaryPrevention? {
        get { self[first: "secondaryPrevention"] }
        set { self[first: "secondaryPrevention"] = newValue }
    }

    public var signOrSymptom: SchemaOrg.MedicalSignOrSymptom? {
        get { self[first: "signOrSymptom"] }
        set { self[first: "signOrSymptom"] = newValue }
    }

    public var stage: SchemaOrg.MedicalConditionStage? {
        get { self[first: "stage"] }
        set { self[first: "stage"] = newValue }
    }

    public var typicalTest: SchemaOrg.MedicalTest? {
        get { self[first: "typicalTest"] }
        set { self[first: "typicalTest"] = newValue }
    }
}
