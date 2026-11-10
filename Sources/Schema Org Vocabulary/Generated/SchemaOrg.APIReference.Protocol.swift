extension SchemaOrg.APIReference {

    public protocol `Protocol`: SchemaOrg.TechArticle.`Protocol` {}
}

extension SchemaOrg.APIReference.`Protocol` {

    public var assembly: Swift.String? {
        get { self[first: "assembly"] }
        set { self[first: "assembly"] = newValue }
    }

    public var assemblyVersion: Swift.String? {
        get { self[first: "assemblyVersion"] }
        set { self[first: "assemblyVersion"] = newValue }
    }

    public var executableLibraryName: Swift.String? {
        get { self[first: "executableLibraryName"] }
        set { self[first: "executableLibraryName"] = newValue }
    }

    public var programmingModel: Swift.String? {
        get { self[first: "programmingModel"] }
        set { self[first: "programmingModel"] = newValue }
    }

    public var targetPlatform: Swift.String? {
        get { self[first: "targetPlatform"] }
        set { self[first: "targetPlatform"] = newValue }
    }
}
