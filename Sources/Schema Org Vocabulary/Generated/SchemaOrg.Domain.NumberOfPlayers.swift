extension SchemaOrg.Domain {

    public protocol NumberOfPlayers: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfPlayers {

    public var numberOfPlayers: SchemaOrg.QuantitativeValue? {
        get { self[first: "numberOfPlayers"] }
        set { self[first: "numberOfPlayers"] = newValue }
    }
}
