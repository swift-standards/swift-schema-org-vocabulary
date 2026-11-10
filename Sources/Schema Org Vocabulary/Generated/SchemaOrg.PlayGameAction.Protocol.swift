extension SchemaOrg.PlayGameAction {

    public protocol `Protocol`: SchemaOrg.ConsumeAction.`Protocol` {}
}

extension SchemaOrg.PlayGameAction.`Protocol` {

    public var gameAvailabilityType: SchemaOrg.Range.GameAvailabilityType? {
        get { self[first: "gameAvailabilityType"] }
        set { self[first: "gameAvailabilityType"] = newValue }
    }
}
