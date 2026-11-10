extension SchemaOrg.WinAction {

    public protocol `Protocol`: SchemaOrg.AchieveAction.`Protocol` {}
}

extension SchemaOrg.WinAction.`Protocol` {

    public var loser: SchemaOrg.Person? {
        get { self[first: "loser"] }
        set { self[first: "loser"] = newValue }
    }
}
