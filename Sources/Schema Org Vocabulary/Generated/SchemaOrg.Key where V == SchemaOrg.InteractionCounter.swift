extension SchemaOrg.Key where V == SchemaOrg.InteractionCounter {

    public static var agentInteractionStatistic: Self {
        Self("agentInteractionStatistic")
    }

    public static var interactionStatistic: Self {
        Self("interactionStatistic")
    }
}
