extension SchemaOrg.SellAction {

    public protocol `Protocol`:
        SchemaOrg.TradeAction.`Protocol`,
        SchemaOrg.Domain.WarrantyPromise
    {}
}

extension SchemaOrg.SellAction.`Protocol` {

    public var buyer: SchemaOrg.Range.Buyer? {
        get { self[first: "buyer"] }
        set { self[first: "buyer"] = newValue }
    }
}
