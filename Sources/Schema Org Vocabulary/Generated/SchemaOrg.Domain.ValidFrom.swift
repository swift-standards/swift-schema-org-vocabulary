extension SchemaOrg.Domain {

    public protocol ValidFrom: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ValidFrom {

    public var validFrom: SchemaOrg.Range.ValidFrom? {
        get { self[first: "validFrom"] }
        set { self[first: "validFrom"] = newValue }
    }
}
