extension SchemaOrg.Domain {

    public protocol Expires: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Expires {

    public var expires: SchemaOrg.Range.Expires? {
        get { self[first: "expires"] }
        set { self[first: "expires"] = newValue }
    }
}
