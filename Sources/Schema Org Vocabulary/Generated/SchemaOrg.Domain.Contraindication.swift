extension SchemaOrg.Domain {

    public protocol Contraindication: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Contraindication {

    public var contraindication: SchemaOrg.Range.Contraindication? {
        get { self[first: "contraindication"] }
        set { self[first: "contraindication"] = newValue }
    }
}
