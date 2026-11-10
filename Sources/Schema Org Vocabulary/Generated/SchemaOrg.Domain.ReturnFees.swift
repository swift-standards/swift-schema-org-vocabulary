extension SchemaOrg.Domain {

    public protocol ReturnFees: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ReturnFees {

    public var returnFees: SchemaOrg.ReturnFeesEnumeration? {
        get { self[first: "returnFees"] }
        set { self[first: "returnFees"] = newValue }
    }
}
