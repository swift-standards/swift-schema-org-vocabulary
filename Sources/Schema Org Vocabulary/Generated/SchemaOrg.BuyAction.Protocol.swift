extension SchemaOrg.BuyAction {

    public protocol `Protocol`:
        SchemaOrg.TradeAction.`Protocol`,
        SchemaOrg.Domain.Seller,
        SchemaOrg.Domain.WarrantyPromise
    {}
}

extension SchemaOrg.BuyAction.`Protocol` {

    public var vendor: SchemaOrg.Range.Vendor? {
        get { self[first: "vendor"] }
        set { self[first: "vendor"] = newValue }
    }
}
