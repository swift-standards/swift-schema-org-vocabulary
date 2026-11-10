extension SchemaOrg.Domain {

    public protocol ItemReviewed: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ItemReviewed {

    public var itemReviewed: SchemaOrg.Thing? {
        get { self[first: "itemReviewed"] }
        set { self[first: "itemReviewed"] = newValue }
    }
}
