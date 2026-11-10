extension SchemaOrg.Domain {

    public protocol InventoryLevel: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.InventoryLevel {

    public var inventoryLevel: SchemaOrg.QuantitativeValue? {
        get { self[first: "inventoryLevel"] }
        set { self[first: "inventoryLevel"] = newValue }
    }
}
