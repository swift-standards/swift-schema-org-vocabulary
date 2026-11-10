extension SchemaOrg.Domain {

    public protocol Material: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Material {

    public var material: SchemaOrg.Range.Material? {
        get { self[first: "material"] }
        set { self[first: "material"] = newValue }
    }
}
