extension SchemaOrg.MedicalTest {

    public protocol `Protocol`: SchemaOrg.MedicalEntity.`Protocol` {}
}

extension SchemaOrg.MedicalTest.`Protocol` {

    public var affectedBy: SchemaOrg.Drug? {
        get { self[first: "affectedBy"] }
        set { self[first: "affectedBy"] = newValue }
    }

    public var normalRange: SchemaOrg.Range.NormalRange? {
        get { self[first: "normalRange"] }
        set { self[first: "normalRange"] = newValue }
    }

    public var signDetected: SchemaOrg.MedicalSign? {
        get { self[first: "signDetected"] }
        set { self[first: "signDetected"] = newValue }
    }

    public var usedToDiagnose: SchemaOrg.MedicalCondition? {
        get { self[first: "usedToDiagnose"] }
        set { self[first: "usedToDiagnose"] = newValue }
    }

    public var usesDevice: SchemaOrg.MedicalDevice? {
        get { self[first: "usesDevice"] }
        set { self[first: "usesDevice"] = newValue }
    }
}
