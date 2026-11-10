extension SchemaOrg.WebAPI {

    public protocol `Protocol`: SchemaOrg.Service.`Protocol` {}
}

extension SchemaOrg.WebAPI.`Protocol` {

    public var documentation: SchemaOrg.Range.Documentation? {
        get { self[first: "documentation"] }
        set { self[first: "documentation"] = newValue }
    }
}
