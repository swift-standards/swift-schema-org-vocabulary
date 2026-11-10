extension SchemaOrg.Corporation {

    public protocol `Protocol`: SchemaOrg.Organization.`Protocol` {}
}

extension SchemaOrg.Corporation.`Protocol` {

    public var tickerSymbol: Swift.String? {
        get { self[first: "tickerSymbol"] }
        set { self[first: "tickerSymbol"] = newValue }
    }
}
