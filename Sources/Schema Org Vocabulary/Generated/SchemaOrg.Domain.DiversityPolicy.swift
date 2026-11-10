extension SchemaOrg.Domain {

    public protocol DiversityPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DiversityPolicy {

    public var diversityPolicy: SchemaOrg.Range.DiversityPolicy? {
        get { self[first: "diversityPolicy"] }
        set { self[first: "diversityPolicy"] = newValue }
    }
}
