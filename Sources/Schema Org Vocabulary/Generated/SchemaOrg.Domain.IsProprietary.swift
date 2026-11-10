extension SchemaOrg.Domain {

    public protocol IsProprietary: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsProprietary {

    public var isProprietary: Swift.Bool? {
        get { self[first: "isProprietary"] }
        set { self[first: "isProprietary"] = newValue }
    }
}
