extension SchemaOrg.MedicalSign {

    public protocol `Protocol`: SchemaOrg.MedicalSignOrSymptom.`Protocol` {}
}

extension SchemaOrg.MedicalSign.`Protocol` {

    public var identifyingExam: SchemaOrg.PhysicalExam? {
        get { self[first: "identifyingExam"] }
        set { self[first: "identifyingExam"] = newValue }
    }

    public var identifyingTest: SchemaOrg.MedicalTest? {
        get { self[first: "identifyingTest"] }
        set { self[first: "identifyingTest"] = newValue }
    }
}
