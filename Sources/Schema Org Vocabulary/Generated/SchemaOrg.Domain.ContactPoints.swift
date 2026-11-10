extension SchemaOrg.Domain {

    public protocol ContactPoints: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ContactPoints {

    public var contactPoints: SchemaOrg.ContactPoint? {
        get { self[first: "contactPoints"] }
        set { self[first: "contactPoints"] = newValue }
    }
}
