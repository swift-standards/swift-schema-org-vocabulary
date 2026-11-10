extension SchemaOrg.Domain {

    public protocol EduQuestionType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EduQuestionType {

    public var eduQuestionType: Swift.String? {
        get { self[first: "eduQuestionType"] }
        set { self[first: "eduQuestionType"] = newValue }
    }
}
