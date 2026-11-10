extension SchemaOrg.ReviewAction {

    public protocol `Protocol`: SchemaOrg.AssessAction.`Protocol` {}
}

extension SchemaOrg.ReviewAction.`Protocol` {

    public var resultReview: SchemaOrg.Review? {
        get { self[first: "resultReview"] }
        set { self[first: "resultReview"] = newValue }
    }
}
