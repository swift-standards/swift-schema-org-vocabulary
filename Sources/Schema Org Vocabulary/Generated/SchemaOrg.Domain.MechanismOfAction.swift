extension SchemaOrg.Domain {

    public protocol MechanismOfAction: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MechanismOfAction {

    public var mechanismOfAction: Swift.String? {
        get { self[first: "mechanismOfAction"] }
        set { self[first: "mechanismOfAction"] = newValue }
    }
}
