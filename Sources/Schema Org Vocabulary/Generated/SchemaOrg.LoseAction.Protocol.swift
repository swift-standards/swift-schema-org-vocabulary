extension SchemaOrg.LoseAction {

    public protocol `Protocol`: SchemaOrg.AchieveAction.`Protocol` {}
}

extension SchemaOrg.LoseAction.`Protocol` {

    public var winner: SchemaOrg.Person? {
        get { self[first: "winner"] }
        set { self[first: "winner"] = newValue }
    }
}
