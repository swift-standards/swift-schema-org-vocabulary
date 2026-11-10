extension SchemaOrg.Domain {

    public protocol BusinessDays: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.BusinessDays {

    public var businessDays: SchemaOrg.Range.BusinessDays? {
        get { self[first: "businessDays"] }
        set { self[first: "businessDays"] = newValue }
    }
}
