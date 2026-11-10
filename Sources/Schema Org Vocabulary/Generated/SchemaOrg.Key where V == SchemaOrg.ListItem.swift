extension SchemaOrg.Key where V == SchemaOrg.ListItem {

    public static var nextItem: Self {
        Self("nextItem")
    }

    public static var previousItem: Self {
        Self("previousItem")
    }
}
