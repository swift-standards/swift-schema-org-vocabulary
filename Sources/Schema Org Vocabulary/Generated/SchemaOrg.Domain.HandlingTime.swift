extension SchemaOrg.Domain {

    public protocol HandlingTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HandlingTime {

    public var handlingTime: SchemaOrg.Range.HandlingTime? {
        get { self[first: "handlingTime"] }
        set { self[first: "handlingTime"] = newValue }
    }
}
