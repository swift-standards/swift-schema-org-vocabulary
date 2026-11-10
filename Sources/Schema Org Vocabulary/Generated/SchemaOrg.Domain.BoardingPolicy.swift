extension SchemaOrg.Domain {

    public protocol BoardingPolicy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.BoardingPolicy {

    public var boardingPolicy: SchemaOrg.BoardingPolicyType? {
        get { self[first: "boardingPolicy"] }
        set { self[first: "boardingPolicy"] = newValue }
    }
}
