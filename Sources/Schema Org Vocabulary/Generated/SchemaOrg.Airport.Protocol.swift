extension SchemaOrg.Airport {

    public protocol `Protocol`:
        SchemaOrg.CivicStructure.`Protocol`,
        SchemaOrg.Domain.IataCode
    {}
}

extension SchemaOrg.Airport.`Protocol` {

    public var icaoCode: Swift.String? {
        get { self[first: "icaoCode"] }
        set { self[first: "icaoCode"] = newValue }
    }
}
