extension SchemaOrg.Domain {

    public protocol ReturnMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ReturnMethod {

    public var returnMethod: SchemaOrg.ReturnMethodEnumeration? {
        get { self[first: "returnMethod"] }
        set { self[first: "returnMethod"] = newValue }
    }
}
