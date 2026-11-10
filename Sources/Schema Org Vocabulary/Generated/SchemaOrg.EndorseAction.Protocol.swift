extension SchemaOrg.EndorseAction {

    public protocol `Protocol`: SchemaOrg.ReactAction.`Protocol` {}
}

extension SchemaOrg.EndorseAction.`Protocol` {

    public var endorsee: SchemaOrg.Range.Endorsee? {
        get { self[first: "endorsee"] }
        set { self[first: "endorsee"] = newValue }
    }
}
