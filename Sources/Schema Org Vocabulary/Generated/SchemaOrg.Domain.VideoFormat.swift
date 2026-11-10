extension SchemaOrg.Domain {

    public protocol VideoFormat: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.VideoFormat {

    public var videoFormat: Swift.String? {
        get { self[first: "videoFormat"] }
        set { self[first: "videoFormat"] = newValue }
    }
}
