extension SchemaOrg.Thesis {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.Thesis.`Protocol` {

    public var inSupportOf: Swift.String? {
        get { self[first: "inSupportOf"] }
        set { self[first: "inSupportOf"] = newValue }
    }
}
