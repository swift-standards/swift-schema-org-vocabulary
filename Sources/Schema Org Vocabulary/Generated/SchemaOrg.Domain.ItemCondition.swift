extension SchemaOrg.Domain {

    public protocol ItemCondition: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ItemCondition {

    public var itemCondition: SchemaOrg.OfferItemCondition? {
        get { self[first: "itemCondition"] }
        set { self[first: "itemCondition"] = newValue }
    }
}
