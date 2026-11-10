extension SchemaOrg.Key where V == SchemaOrg.SoftwareApplication {

    public static var actionApplication: Self {
        Self("actionApplication")
    }

    public static var application: Self {
        Self("application")
    }

    public static var softwareAddOn: Self {
        Self("softwareAddOn")
    }

    public static var targetProduct: Self {
        Self("targetProduct")
    }
}
