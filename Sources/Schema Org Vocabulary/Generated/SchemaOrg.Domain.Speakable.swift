extension SchemaOrg.Domain {

    public protocol Speakable: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Speakable {

    public var speakable: SchemaOrg.Range.Speakable? {
        get { self[first: "speakable"] }
        set { self[first: "speakable"] = newValue }
    }
}
