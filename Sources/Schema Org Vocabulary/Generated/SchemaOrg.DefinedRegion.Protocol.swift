extension SchemaOrg.DefinedRegion {

    public protocol `Protocol`:
        SchemaOrg.Place.`Protocol`,
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.AddressCountry,
        SchemaOrg.Domain.AddressRegion,
        SchemaOrg.Domain.PostalCode
    {}
}

extension SchemaOrg.DefinedRegion.`Protocol` {

    public var postalCodePrefix: Swift.String? {
        get { self[first: "postalCodePrefix"] }
        set { self[first: "postalCodePrefix"] = newValue }
    }

    public var postalCodeRange: SchemaOrg.PostalCodeRangeSpecification? {
        get { self[first: "postalCodeRange"] }
        set { self[first: "postalCodeRange"] = newValue }
    }
}
