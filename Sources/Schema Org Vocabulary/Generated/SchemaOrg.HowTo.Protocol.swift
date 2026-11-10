extension SchemaOrg.HowTo {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.EstimatedCost,
        SchemaOrg.Domain.PerformTime,
        SchemaOrg.Domain.PrepTime,
        SchemaOrg.Domain.Steps,
        SchemaOrg.Domain.Supply,
        SchemaOrg.Domain.Tool,
        SchemaOrg.Domain.TotalTime
    {}
}

extension SchemaOrg.HowTo.`Protocol` {

    public var step: SchemaOrg.Range.Step? {
        get { self[first: "step"] }
        set { self[first: "step"] = newValue }
    }

    public var yield: SchemaOrg.Range.Yield? {
        get { self[first: "yield"] }
        set { self[first: "yield"] = newValue }
    }
}
