extension SchemaOrg.PlanAction {

    public protocol `Protocol`: SchemaOrg.OrganizeAction.`Protocol` {}
}

extension SchemaOrg.PlanAction.`Protocol` {

    public var scheduledTime: SchemaOrg.Range.ScheduledTime? {
        get { self[first: "scheduledTime"] }
        set { self[first: "scheduledTime"] = newValue }
    }
}
