extension SchemaOrg.Domain {

    public protocol FeesAndCommissionsSpecification: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.FeesAndCommissionsSpecification {

    public var feesAndCommissionsSpecification: SchemaOrg.Range.FeesAndCommissionsSpecification? {
        get { self[first: "feesAndCommissionsSpecification"] }
        set { self[first: "feesAndCommissionsSpecification"] = newValue }
    }
}
