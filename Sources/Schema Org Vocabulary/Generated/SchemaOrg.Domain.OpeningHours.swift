extension SchemaOrg.Domain {

    public protocol OpeningHours: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.OpeningHours {

    public var openingHours: Swift.String? {
        get { self[first: "openingHours"] }
        set { self[first: "openingHours"] = newValue }
    }
}
