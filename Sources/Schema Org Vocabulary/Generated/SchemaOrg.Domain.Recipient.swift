extension SchemaOrg.Domain {

    public protocol Recipient: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Recipient {

    public var recipient: SchemaOrg.Range.Recipient? {
        get { self[first: "recipient"] }
        set { self[first: "recipient"] = newValue }
    }
}
