extension SchemaOrg.Domain {

    public protocol Award: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Award {

    public var award: Swift.String? {
        get { self[first: "award"] }
        set { self[first: "award"] = newValue }
    }
}
