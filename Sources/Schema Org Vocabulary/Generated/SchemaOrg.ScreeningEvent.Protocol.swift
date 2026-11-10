extension SchemaOrg.ScreeningEvent {

    public protocol `Protocol`:
        SchemaOrg.Event.`Protocol`,
        SchemaOrg.Domain.SubtitleLanguage,
        SchemaOrg.Domain.VideoFormat
    {}
}

extension SchemaOrg.ScreeningEvent.`Protocol` {

    public var workPresented: SchemaOrg.Movie? {
        get { self[first: "workPresented"] }
        set { self[first: "workPresented"] = newValue }
    }
}
