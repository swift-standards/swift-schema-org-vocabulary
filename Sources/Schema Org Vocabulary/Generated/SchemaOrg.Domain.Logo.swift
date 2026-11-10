extension SchemaOrg.Domain {

    public protocol Logo: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Logo {

    public var logo: SchemaOrg.Range.Logo? {
        get { self[first: "logo"] }
        set { self[first: "logo"] = newValue }
    }
}
