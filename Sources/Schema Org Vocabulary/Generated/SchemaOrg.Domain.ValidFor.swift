extension SchemaOrg.Domain {

    public protocol ValidFor: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ValidFor {

    public var validFor: ISO_8601.Duration? {
        get { self[first: "validFor"] }
        set { self[first: "validFor"] = newValue }
    }
}
