extension SchemaOrg.Domain {

    public protocol Transcript: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Transcript {

    public var transcript: Swift.String? {
        get { self[first: "transcript"] }
        set { self[first: "transcript"] = newValue }
    }
}
