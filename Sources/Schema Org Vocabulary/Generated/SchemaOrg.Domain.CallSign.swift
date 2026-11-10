extension SchemaOrg.Domain {

    public protocol CallSign: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CallSign {

    public var callSign: Swift.String? {
        get { self[first: "callSign"] }
        set { self[first: "callSign"] = newValue }
    }
}
