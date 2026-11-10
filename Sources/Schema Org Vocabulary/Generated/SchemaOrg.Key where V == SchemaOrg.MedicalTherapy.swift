extension SchemaOrg.Key where V == SchemaOrg.MedicalTherapy {

    public static var duplicateTherapy: Self {
        Self("duplicateTherapy")
    }

    public static var primaryPrevention: Self {
        Self("primaryPrevention")
    }

    public static var relatedTherapy: Self {
        Self("relatedTherapy")
    }
}
