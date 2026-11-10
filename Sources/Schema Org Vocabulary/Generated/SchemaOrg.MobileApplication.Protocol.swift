extension SchemaOrg.MobileApplication {

    public protocol `Protocol`: SchemaOrg.SoftwareApplication.`Protocol` {}
}

extension SchemaOrg.MobileApplication.`Protocol` {

    public var carrierRequirements: Swift.String? {
        get { self[first: "carrierRequirements"] }
        set { self[first: "carrierRequirements"] = newValue }
    }
}
