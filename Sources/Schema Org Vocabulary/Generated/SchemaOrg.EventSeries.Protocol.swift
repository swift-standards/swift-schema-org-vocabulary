extension SchemaOrg.EventSeries {

    public protocol `Protocol`:
        SchemaOrg.Event.`Protocol`,
        SchemaOrg.Series.`Protocol`
    {}
}
