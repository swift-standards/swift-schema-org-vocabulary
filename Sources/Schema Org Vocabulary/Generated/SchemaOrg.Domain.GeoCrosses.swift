extension SchemaOrg.Domain {

    public protocol GeoCrosses: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.GeoCrosses {

    public var geoCrosses: SchemaOrg.Range.GeoCrosses? {
        get { self[first: "geoCrosses"] }
        set { self[first: "geoCrosses"] = newValue }
    }
}
