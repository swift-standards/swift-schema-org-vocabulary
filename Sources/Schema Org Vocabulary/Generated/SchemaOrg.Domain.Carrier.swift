extension SchemaOrg.Domain {

    public protocol Carrier: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Carrier {

    public var carrier: SchemaOrg.Organization? {
        get { self[first: "carrier"] }
        set { self[first: "carrier"] = newValue }
    }
}
