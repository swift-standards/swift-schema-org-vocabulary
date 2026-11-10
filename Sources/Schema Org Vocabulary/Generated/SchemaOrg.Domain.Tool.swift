extension SchemaOrg.Domain {

    public protocol Tool: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Tool {

    public var tool: SchemaOrg.Range.Tool? {
        get { self[first: "tool"] }
        set { self[first: "tool"] = newValue }
    }
}
