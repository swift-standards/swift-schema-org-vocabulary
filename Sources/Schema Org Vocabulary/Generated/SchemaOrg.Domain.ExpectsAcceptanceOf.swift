extension SchemaOrg.Domain {

    public protocol ExpectsAcceptanceOf: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ExpectsAcceptanceOf {

    public var expectsAcceptanceOf: SchemaOrg.Offer? {
        get { self[first: "expectsAcceptanceOf"] }
        set { self[first: "expectsAcceptanceOf"] = newValue }
    }
}
