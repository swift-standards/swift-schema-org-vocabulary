extension SchemaOrg.Domain {

    public protocol Publisher: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Publisher {

    public var publisher: SchemaOrg.Range.Publisher? {
        get { self[first: "publisher"] }
        set { self[first: "publisher"] = newValue }
    }
}
