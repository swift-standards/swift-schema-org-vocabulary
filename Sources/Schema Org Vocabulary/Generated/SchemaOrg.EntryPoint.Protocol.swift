extension SchemaOrg.EntryPoint {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.EntryPoint.`Protocol` {

    public var actionApplication: SchemaOrg.SoftwareApplication? {
        get { self[first: "actionApplication"] }
        set { self[first: "actionApplication"] = newValue }
    }

    public var actionPlatform: SchemaOrg.Range.ActionPlatform? {
        get { self[first: "actionPlatform"] }
        set { self[first: "actionPlatform"] = newValue }
    }

    public var application: SchemaOrg.SoftwareApplication? {
        get { self[first: "application"] }
        set { self[first: "application"] = newValue }
    }

    public var contentType: Swift.String? {
        get { self[first: "contentType"] }
        set { self[first: "contentType"] = newValue }
    }

    public var encodingType: Swift.String? {
        get { self[first: "encodingType"] }
        set { self[first: "encodingType"] = newValue }
    }

    public var httpMethod: Swift.String? {
        get { self[first: "httpMethod"] }
        set { self[first: "httpMethod"] = newValue }
    }

    public var urlTemplate: Swift.String? {
        get { self[first: "urlTemplate"] }
        set { self[first: "urlTemplate"] = newValue }
    }
}
