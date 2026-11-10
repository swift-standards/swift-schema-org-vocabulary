extension SchemaOrg.Domain {

    public protocol PotentialUse: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PotentialUse {

    public var potentialUse: SchemaOrg.DefinedTerm? {
        get { self[first: "potentialUse"] }
        set { self[first: "potentialUse"] = newValue }
    }
}
