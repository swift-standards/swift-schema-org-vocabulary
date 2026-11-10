extension SchemaOrg.Domain {

    public protocol LearningResourceType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.LearningResourceType {

    public var learningResourceType: SchemaOrg.Range.LearningResourceType? {
        get { self[first: "learningResourceType"] }
        set { self[first: "learningResourceType"] = newValue }
    }
}
