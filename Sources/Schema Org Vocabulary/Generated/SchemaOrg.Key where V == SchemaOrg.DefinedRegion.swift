extension SchemaOrg.Key where V == SchemaOrg.DefinedRegion {

    public static var shippingDestination: Self {
        Self("shippingDestination")
    }

    public static var shippingOrigin: Self {
        Self("shippingOrigin")
    }
}
