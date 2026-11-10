extension SchemaOrg.GeoShape {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Address,
        SchemaOrg.Domain.AddressCountry,
        SchemaOrg.Domain.Elevation,
        SchemaOrg.Domain.PostalCode
    {}
}

extension SchemaOrg.GeoShape.`Protocol` {

    public var box: Swift.String? {
        get { self[first: "box"] }
        set { self[first: "box"] = newValue }
    }

    public var circle: Swift.String? {
        get { self[first: "circle"] }
        set { self[first: "circle"] = newValue }
    }

    public var line: Swift.String? {
        get { self[first: "line"] }
        set { self[first: "line"] = newValue }
    }

    public var polygon: Swift.String? {
        get { self[first: "polygon"] }
        set { self[first: "polygon"] = newValue }
    }
}
