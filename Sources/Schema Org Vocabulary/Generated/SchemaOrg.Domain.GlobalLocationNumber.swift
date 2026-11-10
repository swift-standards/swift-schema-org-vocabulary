extension SchemaOrg.Domain {

    public protocol GlobalLocationNumber: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GlobalLocationNumber {

    public var globalLocationNumber: Swift.String? {
        get { self[first: "globalLocationNumber"] }
        set { self[first: "globalLocationNumber"] = newValue }
    }
}
