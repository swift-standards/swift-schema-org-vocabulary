extension SchemaOrg.Key where V == SchemaOrg.ContactPoint {

    public static var applicationContact: Self {
        Self("applicationContact")
    }

    public static var contactPoint: Self {
        Self("contactPoint")
    }

    public static var contactPoints: Self {
        Self("contactPoints")
    }

    public static var servicePhone: Self {
        Self("servicePhone")
    }

    public static var serviceSmsNumber: Self {
        Self("serviceSmsNumber")
    }
}
