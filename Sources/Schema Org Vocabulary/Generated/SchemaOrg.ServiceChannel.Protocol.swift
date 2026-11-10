extension SchemaOrg.ServiceChannel {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AvailableLanguage
    {}
}

extension SchemaOrg.ServiceChannel.`Protocol` {

    public var processingTime: ISO_8601.Duration? {
        get { self[first: "processingTime"] }
        set { self[first: "processingTime"] = newValue }
    }

    public var providesService: SchemaOrg.Service? {
        get { self[first: "providesService"] }
        set { self[first: "providesService"] = newValue }
    }

    public var serviceLocation: SchemaOrg.Place? {
        get { self[first: "serviceLocation"] }
        set { self[first: "serviceLocation"] = newValue }
    }

    public var servicePhone: SchemaOrg.ContactPoint? {
        get { self[first: "servicePhone"] }
        set { self[first: "servicePhone"] = newValue }
    }

    public var servicePostalAddress: SchemaOrg.PostalAddress? {
        get { self[first: "servicePostalAddress"] }
        set { self[first: "servicePostalAddress"] = newValue }
    }

    public var serviceSmsNumber: SchemaOrg.ContactPoint? {
        get { self[first: "serviceSmsNumber"] }
        set { self[first: "serviceSmsNumber"] = newValue }
    }

    public var serviceUrl: RFC_3986.URI? {
        get { self[first: "serviceUrl"] }
        set { self[first: "serviceUrl"] = newValue }
    }
}
