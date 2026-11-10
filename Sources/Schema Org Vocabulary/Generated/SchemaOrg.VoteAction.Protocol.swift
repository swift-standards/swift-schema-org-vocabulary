extension SchemaOrg.VoteAction {

    public protocol `Protocol`: SchemaOrg.ChooseAction.`Protocol` {}
}

extension SchemaOrg.VoteAction.`Protocol` {

    public var candidate: SchemaOrg.Person? {
        get { self[first: "candidate"] }
        set { self[first: "candidate"] = newValue }
    }
}
