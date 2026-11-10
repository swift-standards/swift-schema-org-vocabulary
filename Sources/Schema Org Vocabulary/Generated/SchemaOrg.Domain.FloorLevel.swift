extension SchemaOrg.Domain {

    public protocol FloorLevel: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FloorLevel {

    public var floorLevel: Swift.String? {
        get { self[first: "floorLevel"] }
        set { self[first: "floorLevel"] = newValue }
    }
}
