extension SchemaOrg.Domain {

    public protocol InteractionStatistic: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.InteractionStatistic {

    public var interactionStatistic: SchemaOrg.InteractionCounter? {
        get { self[first: "interactionStatistic"] }
        set { self[first: "interactionStatistic"] = newValue }
    }
}
