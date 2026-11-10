extension SchemaOrg.HyperTocEntry {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.AssociatedMedia
    {}
}

extension SchemaOrg.HyperTocEntry.`Protocol` {

    public var tocContinuation: SchemaOrg.HyperTocEntry? {
        get { self[first: "tocContinuation"] }
        set { self[first: "tocContinuation"] = newValue }
    }

    public var utterances: Swift.String? {
        get { self[first: "utterances"] }
        set { self[first: "utterances"] = newValue }
    }
}
