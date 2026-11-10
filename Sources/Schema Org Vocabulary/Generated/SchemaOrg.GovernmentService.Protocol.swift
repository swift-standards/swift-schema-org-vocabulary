extension SchemaOrg.GovernmentService {

    public protocol `Protocol`:
        SchemaOrg.Service.`Protocol`,
        SchemaOrg.Domain.Jurisdiction
    {}
}

extension SchemaOrg.GovernmentService.`Protocol` {

    public var serviceOperator: SchemaOrg.Organization? {
        get { self[first: "serviceOperator"] }
        set { self[first: "serviceOperator"] = newValue }
    }
}
