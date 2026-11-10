extension SchemaOrg.ConsumeAction {

    public protocol `Protocol`:
        SchemaOrg.Action.`Protocol`,
        SchemaOrg.Domain.ExpectsAcceptanceOf
    {}
}

extension SchemaOrg.ConsumeAction.`Protocol` {

    public var actionAccessibilityRequirement: SchemaOrg.ActionAccessSpecification? {
        get { self[first: "actionAccessibilityRequirement"] }
        set { self[first: "actionAccessibilityRequirement"] = newValue }
    }
}
