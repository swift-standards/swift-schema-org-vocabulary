extension SchemaOrg.Domain {

    public protocol LeaseLength: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.LeaseLength {

    public var leaseLength: SchemaOrg.Range.LeaseLength? {
        get { self[first: "leaseLength"] }
        set { self[first: "leaseLength"] = newValue }
    }
}
