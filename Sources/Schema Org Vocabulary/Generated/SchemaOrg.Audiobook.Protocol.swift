extension SchemaOrg.Audiobook {

    public protocol `Protocol`:
        SchemaOrg.AudioObject.`Protocol`,
        SchemaOrg.Book.`Protocol`,
        SchemaOrg.Domain.Duration
    {}
}

extension SchemaOrg.Audiobook.`Protocol` {

    public var readBy: SchemaOrg.Person? {
        get { self[first: "readBy"] }
        set { self[first: "readBy"] = newValue }
    }
}
