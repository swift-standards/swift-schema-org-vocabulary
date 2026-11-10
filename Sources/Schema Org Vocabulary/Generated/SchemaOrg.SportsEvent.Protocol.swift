extension SchemaOrg.SportsEvent {

    public protocol `Protocol`:
        SchemaOrg.Event.`Protocol`,
        SchemaOrg.Domain.Sport
    {}
}

extension SchemaOrg.SportsEvent.`Protocol` {

    public var awayTeam: SchemaOrg.Range.AwayTeam? {
        get { self[first: "awayTeam"] }
        set { self[first: "awayTeam"] = newValue }
    }

    public var competitor: SchemaOrg.Range.Competitor? {
        get { self[first: "competitor"] }
        set { self[first: "competitor"] = newValue }
    }

    public var homeTeam: SchemaOrg.Range.HomeTeam? {
        get { self[first: "homeTeam"] }
        set { self[first: "homeTeam"] = newValue }
    }

    public var referee: SchemaOrg.Person? {
        get { self[first: "referee"] }
        set { self[first: "referee"] = newValue }
    }
}
