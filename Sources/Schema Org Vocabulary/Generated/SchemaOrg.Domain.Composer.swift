extension SchemaOrg.Domain {

    public protocol Composer: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Composer {

    public var composer: SchemaOrg.Range.Composer? {
        get { self[first: "composer"] }
        set { self[first: "composer"] = newValue }
    }
}
