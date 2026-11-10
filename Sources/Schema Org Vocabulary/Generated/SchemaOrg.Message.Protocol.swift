extension SchemaOrg.Message {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Recipient,
        SchemaOrg.Domain.Sender
    {}
}

extension SchemaOrg.Message.`Protocol` {

    public var bccRecipient: SchemaOrg.Range.BccRecipient? {
        get { self[first: "bccRecipient"] }
        set { self[first: "bccRecipient"] = newValue }
    }

    public var ccRecipient: SchemaOrg.Range.CcRecipient? {
        get { self[first: "ccRecipient"] }
        set { self[first: "ccRecipient"] = newValue }
    }

    public var dateRead: SchemaOrg.Range.DateRead? {
        get { self[first: "dateRead"] }
        set { self[first: "dateRead"] = newValue }
    }

    public var dateReceived: ISO_8601.DateTime? {
        get { self[first: "dateReceived"] }
        set { self[first: "dateReceived"] = newValue }
    }

    public var dateSent: ISO_8601.DateTime? {
        get { self[first: "dateSent"] }
        set { self[first: "dateSent"] = newValue }
    }

    public var messageAttachment: SchemaOrg.CreativeWork? {
        get { self[first: "messageAttachment"] }
        set { self[first: "messageAttachment"] = newValue }
    }

    public var toRecipient: SchemaOrg.Range.ToRecipient? {
        get { self[first: "toRecipient"] }
        set { self[first: "toRecipient"] = newValue }
    }
}
