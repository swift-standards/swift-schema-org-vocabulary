extension SchemaOrg.HowToDirection {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.ListItem.`Protocol`,
        SchemaOrg.Domain.PerformTime,
        SchemaOrg.Domain.PrepTime,
        SchemaOrg.Domain.Supply,
        SchemaOrg.Domain.Tool,
        SchemaOrg.Domain.TotalTime
    {}
}

extension SchemaOrg.HowToDirection.`Protocol` {

    public var afterMedia: SchemaOrg.Range.AfterMedia? {
        get { self[first: "afterMedia"] }
        set { self[first: "afterMedia"] = newValue }
    }

    public var beforeMedia: SchemaOrg.Range.BeforeMedia? {
        get { self[first: "beforeMedia"] }
        set { self[first: "beforeMedia"] = newValue }
    }

    public var duringMedia: SchemaOrg.Range.DuringMedia? {
        get { self[first: "duringMedia"] }
        set { self[first: "duringMedia"] = newValue }
    }
}
