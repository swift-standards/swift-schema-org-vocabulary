extension SchemaOrg.Key where V == SchemaOrg.Product {

    public static var hasVariant: Self {
        Self("hasVariant")
    }

    public static var isAccessoryOrSparePartFor: Self {
        Self("isAccessoryOrSparePartFor")
    }

    public static var isConsumableFor: Self {
        Self("isConsumableFor")
    }

    public static var isOftenBoughtWith: Self {
        Self("isOftenBoughtWith")
    }

    public static var itemShipped: Self {
        Self("itemShipped")
    }
}
