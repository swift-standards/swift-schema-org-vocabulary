extension SchemaOrg.MedicalGuidelineRecommendation {

    public protocol `Protocol`: SchemaOrg.MedicalGuideline.`Protocol` {}
}

extension SchemaOrg.MedicalGuidelineRecommendation.`Protocol` {

    public var recommendationStrength: Swift.String? {
        get { self[first: "recommendationStrength"] }
        set { self[first: "recommendationStrength"] = newValue }
    }
}
