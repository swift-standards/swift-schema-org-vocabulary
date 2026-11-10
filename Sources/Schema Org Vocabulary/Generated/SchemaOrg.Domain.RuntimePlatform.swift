extension SchemaOrg.Domain {

    public protocol RuntimePlatform: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RuntimePlatform {

    public var runtimePlatform: SchemaOrg.Range.RuntimePlatform? {
        get { self[first: "runtimePlatform"] }
        set { self[first: "runtimePlatform"] = newValue }
    }
}
