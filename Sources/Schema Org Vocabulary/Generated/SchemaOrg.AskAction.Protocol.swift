extension SchemaOrg.AskAction {

    public protocol `Protocol`: SchemaOrg.CommunicateAction.`Protocol` {}
}

extension SchemaOrg.AskAction.`Protocol` {

    public var question: SchemaOrg.Question? {
        get { self[first: "question"] }
        set { self[first: "question"] = newValue }
    }
}
