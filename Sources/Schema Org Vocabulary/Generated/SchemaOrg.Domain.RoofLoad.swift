extension SchemaOrg.Domain {

    public protocol RoofLoad: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RoofLoad {

    public var roofLoad: SchemaOrg.QuantitativeValue? {
        get { self[first: "roofLoad"] }
        set { self[first: "roofLoad"] = newValue }
    }
}
