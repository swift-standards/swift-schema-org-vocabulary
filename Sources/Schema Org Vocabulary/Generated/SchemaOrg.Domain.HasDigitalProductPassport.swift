extension SchemaOrg.Domain {

    public protocol HasDigitalProductPassport: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasDigitalProductPassport {

    public var hasDigitalProductPassport: SchemaOrg.Range.HasDigitalProductPassport? {
        get { self[first: "hasDigitalProductPassport"] }
        set { self[first: "hasDigitalProductPassport"] = newValue }
    }
}
