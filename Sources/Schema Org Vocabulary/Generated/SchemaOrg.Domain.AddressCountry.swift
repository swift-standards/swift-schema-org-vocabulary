extension SchemaOrg.Domain {

    public protocol AddressCountry: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AddressCountry {

    public var addressCountry: SchemaOrg.Range.AddressCountry? {
        get { self[first: "addressCountry"] }
        set { self[first: "addressCountry"] = newValue }
    }
}
