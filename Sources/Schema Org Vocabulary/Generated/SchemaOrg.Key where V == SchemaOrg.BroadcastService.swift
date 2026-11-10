extension SchemaOrg.Key where V == SchemaOrg.BroadcastService {

    public static var parentService: Self {
        Self("parentService")
    }

    public static var providesBroadcastService: Self {
        Self("providesBroadcastService")
    }

    public static var publishedOn: Self {
        Self("publishedOn")
    }
}
