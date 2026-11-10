extension SchemaOrg.HowToItem {

    public protocol `Protocol`: SchemaOrg.ListItem.`Protocol` {}
}

extension SchemaOrg.HowToItem.`Protocol` {

    public var requiredQuantity: SchemaOrg.Range.RequiredQuantity? {
        get { self[first: "requiredQuantity"] }
        set { self[first: "requiredQuantity"] = newValue }
    }
}
