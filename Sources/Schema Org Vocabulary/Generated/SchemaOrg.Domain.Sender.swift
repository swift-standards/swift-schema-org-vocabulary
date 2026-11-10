extension SchemaOrg.Domain {

    public protocol Sender: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Sender {

    public var sender: SchemaOrg.Range.Sender? {
        get { self[first: "sender"] }
        set { self[first: "sender"] = newValue }
    }
}
