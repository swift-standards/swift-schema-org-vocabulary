extension SchemaOrg.Domain {

    public protocol Skills: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Skills {

    public var skills: SchemaOrg.Range.Skills? {
        get { self[first: "skills"] }
        set { self[first: "skills"] = newValue }
    }
}
