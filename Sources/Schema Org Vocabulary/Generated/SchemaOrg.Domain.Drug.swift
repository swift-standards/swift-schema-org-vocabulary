extension SchemaOrg.Domain {

    public protocol Drug: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Drug {

    public var drug: SchemaOrg.Drug? {
        get { self[first: "drug"] }
        set { self[first: "drug"] = newValue }
    }
}
