extension SchemaOrg.Domain {

    public protocol ProductionCompany: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ProductionCompany {

    public var productionCompany: SchemaOrg.Organization? {
        get { self[first: "productionCompany"] }
        set { self[first: "productionCompany"] = newValue }
    }
}
