extension SchemaOrg.Domain {

    public protocol KnowsAbout: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.KnowsAbout {

    public var knowsAbout: SchemaOrg.Range.KnowsAbout? {
        get { self[first: "knowsAbout"] }
        set { self[first: "knowsAbout"] = newValue }
    }
}
