extension SchemaOrg.HealthTopicContent {

    public protocol `Protocol`: SchemaOrg.WebContent.`Protocol` {}
}

extension SchemaOrg.HealthTopicContent.`Protocol` {

    public var hasHealthAspect: SchemaOrg.HealthAspectEnumeration? {
        get { self[first: "hasHealthAspect"] }
        set { self[first: "hasHealthAspect"] = newValue }
    }
}
