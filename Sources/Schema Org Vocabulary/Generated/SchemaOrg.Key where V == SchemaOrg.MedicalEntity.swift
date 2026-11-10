extension SchemaOrg.Key where V == SchemaOrg.MedicalEntity {

    public static var adverseOutcome: Self {
        Self("adverseOutcome")
    }

    public static var causeOf: Self {
        Self("causeOf")
    }

    public static var estimatesRiskOf: Self {
        Self("estimatesRiskOf")
    }

    public static var guidelineSubject: Self {
        Self("guidelineSubject")
    }

    public static var increasesRiskOf: Self {
        Self("increasesRiskOf")
    }

    public static var seriousAdverseOutcome: Self {
        Self("seriousAdverseOutcome")
    }

    public static var studySubject: Self {
        Self("studySubject")
    }
}
