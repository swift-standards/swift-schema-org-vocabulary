extension SchemaOrg.Domain {

    public protocol IsFamilyFriendly: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsFamilyFriendly {

    public var isFamilyFriendly: Swift.Bool? {
        get { self[first: "isFamilyFriendly"] }
        set { self[first: "isFamilyFriendly"] = newValue }
    }
}
