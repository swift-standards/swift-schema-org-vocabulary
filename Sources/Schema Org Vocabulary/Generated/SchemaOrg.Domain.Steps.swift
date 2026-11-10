extension SchemaOrg.Domain {

    public protocol Steps: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Steps {

    public var steps: SchemaOrg.Range.Steps? {
        get { self[first: "steps"] }
        set { self[first: "steps"] = newValue }
    }
}
