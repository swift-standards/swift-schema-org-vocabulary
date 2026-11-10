extension SchemaOrg.Question {

    public protocol `Protocol`:
        SchemaOrg.Comment.`Protocol`,
        SchemaOrg.Domain.EduQuestionType,
        SchemaOrg.Domain.ParentItem
    {}
}

extension SchemaOrg.Question.`Protocol` {

    public var acceptedAnswer: SchemaOrg.Range.AcceptedAnswer? {
        get { self[first: "acceptedAnswer"] }
        set { self[first: "acceptedAnswer"] = newValue }
    }

    public var answerCount: Swift.Int? {
        get { self[first: "answerCount"] }
        set { self[first: "answerCount"] = newValue }
    }

    public var suggestedAnswer: SchemaOrg.Range.SuggestedAnswer? {
        get { self[first: "suggestedAnswer"] }
        set { self[first: "suggestedAnswer"] = newValue }
    }
}
