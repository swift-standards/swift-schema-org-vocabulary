extension SchemaOrg.InteractionCounter {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.EndTime,
        SchemaOrg.Domain.Location,
        SchemaOrg.Domain.StartTime
    {}
}

extension SchemaOrg.InteractionCounter.`Protocol` {

    public var interactionService: SchemaOrg.Range.InteractionService? {
        get { self[first: "interactionService"] }
        set { self[first: "interactionService"] = newValue }
    }

    public var interactionType: SchemaOrg.Action? {
        get { self[first: "interactionType"] }
        set { self[first: "interactionType"] = newValue }
    }

    public var userInteractionCount: Swift.Int? {
        get { self[first: "userInteractionCount"] }
        set { self[first: "userInteractionCount"] = newValue }
    }
}
