extension SchemaOrg.Key where V == SchemaOrg.MedicalSignOrSymptom {

    public static var distinguishingSign: Self {
        Self("distinguishingSign")
    }

    public static var signOrSymptom: Self {
        Self("signOrSymptom")
    }
}
