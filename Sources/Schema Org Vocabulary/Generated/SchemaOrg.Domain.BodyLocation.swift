extension SchemaOrg.Domain {

    public protocol BodyLocation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.BodyLocation {

    public var bodyLocation: Swift.String? {
        get { self[first: "bodyLocation"] }
        set { self[first: "bodyLocation"] = newValue }
    }
}
