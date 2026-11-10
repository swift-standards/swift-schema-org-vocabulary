extension SchemaOrg.Domain {

    public protocol ContactPoint: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ContactPoint {

    public var contactPoint: SchemaOrg.ContactPoint? {
        get { self[first: "contactPoint"] }
        set { self[first: "contactPoint"] = newValue }
    }
}
