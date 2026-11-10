extension SchemaOrg.Domain {

    public protocol CountryOfOrigin: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CountryOfOrigin {

    public var countryOfOrigin: SchemaOrg.Country? {
        get { self[first: "countryOfOrigin"] }
        set { self[first: "countryOfOrigin"] = newValue }
    }
}
