extension SchemaOrg.Domain {

    public protocol Customer: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Customer {

    public var customer: SchemaOrg.Range.Customer? {
        get { self[first: "customer"] }
        set { self[first: "customer"] = newValue }
    }
}
