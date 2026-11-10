extension SchemaOrg.Domain {

    public protocol Awards: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Awards {

    public var awards: Swift.String? {
        get { self[first: "awards"] }
        set { self[first: "awards"] = newValue }
    }
}
