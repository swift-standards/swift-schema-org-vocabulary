extension SchemaOrg.Ticket {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.IssuedBy,
        SchemaOrg.Domain.PriceCurrency,
        SchemaOrg.Domain.TotalPrice,
        SchemaOrg.Domain.UnderName
    {}
}

extension SchemaOrg.Ticket.`Protocol` {

    public var dateIssued: SchemaOrg.Range.DateIssued? {
        get { self[first: "dateIssued"] }
        set { self[first: "dateIssued"] = newValue }
    }

    public var ticketNumber: Swift.String? {
        get { self[first: "ticketNumber"] }
        set { self[first: "ticketNumber"] = newValue }
    }

    public var ticketToken: SchemaOrg.Range.TicketToken? {
        get { self[first: "ticketToken"] }
        set { self[first: "ticketToken"] = newValue }
    }

    public var ticketedSeat: SchemaOrg.Seat? {
        get { self[first: "ticketedSeat"] }
        set { self[first: "ticketedSeat"] = newValue }
    }
}
