extension SchemaOrg.Domain {

    public protocol PurchaseDate: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PurchaseDate {

    public var purchaseDate: ISO_8601.CalendarDate? {
        get { self[first: "purchaseDate"] }
        set { self[first: "purchaseDate"] = newValue }
    }
}
