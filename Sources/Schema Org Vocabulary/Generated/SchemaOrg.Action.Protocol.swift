extension SchemaOrg.Action {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.EndTime,
        SchemaOrg.Domain.Location,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.StartTime
    {}
}

extension SchemaOrg.Action.`Protocol` {

    public var actionProcess: SchemaOrg.HowTo? {
        get { self[first: "actionProcess"] }
        set { self[first: "actionProcess"] = newValue }
    }

    public var actionStatus: SchemaOrg.ActionStatusType? {
        get { self[first: "actionStatus"] }
        set { self[first: "actionStatus"] = newValue }
    }

    public var agent: SchemaOrg.Range.Agent? {
        get { self[first: "agent"] }
        set { self[first: "agent"] = newValue }
    }

    public var error: SchemaOrg.Thing? {
        get { self[first: "error"] }
        set { self[first: "error"] = newValue }
    }

    public var instrument: SchemaOrg.Thing? {
        get { self[first: "instrument"] }
        set { self[first: "instrument"] = newValue }
    }

    public var object: SchemaOrg.Thing? {
        get { self[first: "object"] }
        set { self[first: "object"] = newValue }
    }

    public var participant: SchemaOrg.Range.Participant? {
        get { self[first: "participant"] }
        set { self[first: "participant"] = newValue }
    }

    public var result: SchemaOrg.Thing? {
        get { self[first: "result"] }
        set { self[first: "result"] = newValue }
    }

    public var target: SchemaOrg.Range.Target? {
        get { self[first: "target"] }
        set { self[first: "target"] = newValue }
    }
}
