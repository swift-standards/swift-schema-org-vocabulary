extension SchemaOrg.Domain {

    public protocol CheatCode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CheatCode {

    public var cheatCode: SchemaOrg.CreativeWork? {
        get { self[first: "cheatCode"] }
        set { self[first: "cheatCode"] = newValue }
    }
}
