extension SchemaOrg.Domain {

    public protocol PartySize: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PartySize {

    public var partySize: SchemaOrg.Range.PartySize? {
        get { self[first: "partySize"] }
        set { self[first: "partySize"] = newValue }
    }
}
