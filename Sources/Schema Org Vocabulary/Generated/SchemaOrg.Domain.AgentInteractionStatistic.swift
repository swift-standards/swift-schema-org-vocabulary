extension SchemaOrg.Domain {

    public protocol AgentInteractionStatistic: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AgentInteractionStatistic {

    public var agentInteractionStatistic: SchemaOrg.InteractionCounter? {
        get { self[first: "agentInteractionStatistic"] }
        set { self[first: "agentInteractionStatistic"] = newValue }
    }
}
