extension SchemaOrg.Key where V == SchemaOrg.WarrantyPromise {

    public static var warranty: Self {
        Self("warranty")
    }

    public static var warrantyPromise: Self {
        Self("warrantyPromise")
    }
}
