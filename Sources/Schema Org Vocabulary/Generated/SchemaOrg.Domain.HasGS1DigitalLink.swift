extension SchemaOrg.Domain {

    public protocol HasGS1DigitalLink: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasGS1DigitalLink {

    public var hasGS1DigitalLink: RFC_3986.URI? {
        get { self[first: "hasGS1DigitalLink"] }
        set { self[first: "hasGS1DigitalLink"] = newValue }
    }
}
