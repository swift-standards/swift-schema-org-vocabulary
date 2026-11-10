extension SchemaOrg.ChooseAction {

    public protocol `Protocol`: SchemaOrg.AssessAction.`Protocol` {}
}

extension SchemaOrg.ChooseAction.`Protocol` {

    public var actionOption: SchemaOrg.Range.ActionOption? {
        get { self[first: "actionOption"] }
        set { self[first: "actionOption"] = newValue }
    }

    public var option: SchemaOrg.Range.Option? {
        get { self[first: "option"] }
        set { self[first: "option"] = newValue }
    }
}
