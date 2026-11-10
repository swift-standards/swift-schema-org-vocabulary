extension SchemaOrg.Domain {

    public protocol SalaryCurrency: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SalaryCurrency {

    public var salaryCurrency: Swift.String? {
        get { self[first: "salaryCurrency"] }
        set { self[first: "salaryCurrency"] = newValue }
    }
}
