extension SchemaOrg.Answer {

    public protocol `Protocol`:
        SchemaOrg.Comment.`Protocol`,
        SchemaOrg.Domain.ParentItem
    {}
}

extension SchemaOrg.Answer.`Protocol` {

    public var answerExplanation: SchemaOrg.Range.AnswerExplanation? {
        get { self[first: "answerExplanation"] }
        set { self[first: "answerExplanation"] = newValue }
    }
}
