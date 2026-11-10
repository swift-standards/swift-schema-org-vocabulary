extension SchemaOrg.Domain {

    public protocol UnitText: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.UnitText {

    public var unitText: Swift.String? {
        get { self[first: "unitText"] }
        set { self[first: "unitText"] = newValue }
    }
}
