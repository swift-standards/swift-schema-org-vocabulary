extension SchemaOrg.Key where V == SchemaOrg.MedicalSpecialty {

    public static var medicalSpecialty: Self {
        Self("medicalSpecialty")
    }

    public static var relevantSpecialty: Self {
        Self("relevantSpecialty")
    }
}
