extension SchemaOrg.ContactPoint {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.AreaServed,
        SchemaOrg.Domain.AvailableLanguage,
        SchemaOrg.Domain.Email,
        SchemaOrg.Domain.FaxNumber,
        SchemaOrg.Domain.HoursAvailable,
        SchemaOrg.Domain.ServiceArea,
        SchemaOrg.Domain.Telephone
    {}
}

extension SchemaOrg.ContactPoint.`Protocol` {

    public var contactOption: SchemaOrg.ContactPointOption? {
        get { self[first: "contactOption"] }
        set { self[first: "contactOption"] = newValue }
    }

    public var contactType: Swift.String? {
        get { self[first: "contactType"] }
        set { self[first: "contactType"] = newValue }
    }

    public var productSupported: SchemaOrg.Range.ProductSupported? {
        get { self[first: "productSupported"] }
        set { self[first: "productSupported"] = newValue }
    }
}
