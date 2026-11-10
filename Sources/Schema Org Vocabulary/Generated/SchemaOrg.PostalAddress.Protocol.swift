extension SchemaOrg.PostalAddress {

    public protocol `Protocol`:
        SchemaOrg.ContactPoint.`Protocol`,
        SchemaOrg.Domain.AddressCountry,
        SchemaOrg.Domain.AddressRegion,
        SchemaOrg.Domain.PostalCode
    {}
}

extension SchemaOrg.PostalAddress.`Protocol` {

    public var addressLocality: Swift.String? {
        get { self[first: "addressLocality"] }
        set { self[first: "addressLocality"] = newValue }
    }

    public var extendedAddress: Swift.String? {
        get { self[first: "extendedAddress"] }
        set { self[first: "extendedAddress"] = newValue }
    }

    public var postOfficeBoxNumber: Swift.String? {
        get { self[first: "postOfficeBoxNumber"] }
        set { self[first: "postOfficeBoxNumber"] = newValue }
    }

    public var streetAddress: Swift.String? {
        get { self[first: "streetAddress"] }
        set { self[first: "streetAddress"] = newValue }
    }
}
