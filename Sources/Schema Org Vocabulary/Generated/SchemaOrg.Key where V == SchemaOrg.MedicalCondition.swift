extension SchemaOrg.Key where V == SchemaOrg.MedicalCondition {

    public static var diagnosis: Self {
        Self("diagnosis")
    }

    public static var healthCondition: Self {
        Self("healthCondition")
    }

    public static var relatedCondition: Self {
        Self("relatedCondition")
    }

    public static var usedToDiagnose: Self {
        Self("usedToDiagnose")
    }
}
