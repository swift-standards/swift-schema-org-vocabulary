extension SchemaOrg.Domain {

    public protocol Status: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Status {

    public var status: SchemaOrg.Range.Status? {
        get { self[first: "status"] }
        set { self[first: "status"] = newValue }
    }
}
