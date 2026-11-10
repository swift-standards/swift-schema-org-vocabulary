extension SchemaOrg.RsvpAction {

    public protocol `Protocol`:
        SchemaOrg.InformAction.`Protocol`,
        SchemaOrg.Domain.Comment
    {}
}

extension SchemaOrg.RsvpAction.`Protocol` {

    public var additionalNumberOfGuests: Swift.Double? {
        get { self[first: "additionalNumberOfGuests"] }
        set { self[first: "additionalNumberOfGuests"] = newValue }
    }

    public var rsvpResponse: SchemaOrg.RsvpResponseType? {
        get { self[first: "rsvpResponse"] }
        set { self[first: "rsvpResponse"] = newValue }
    }
}
