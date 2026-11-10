extension SchemaOrg.Domain {

    public protocol Track: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Track {

    public var track: SchemaOrg.Range.Track? {
        get { self[first: "track"] }
        set { self[first: "track"] = newValue }
    }
}
