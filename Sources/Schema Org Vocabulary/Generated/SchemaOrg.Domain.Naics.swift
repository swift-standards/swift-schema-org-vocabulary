extension SchemaOrg.Domain {

    public protocol Naics: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Naics {

    public var naics: Swift.String? {
        get { self[first: "naics"] }
        set { self[first: "naics"] = newValue }
    }
}
