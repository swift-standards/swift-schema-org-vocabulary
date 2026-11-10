extension SchemaOrg.BusinessAudience {

    public protocol `Protocol`:
        SchemaOrg.Audience.`Protocol`,
        SchemaOrg.Domain.NumberOfEmployees
    {}
}

extension SchemaOrg.BusinessAudience.`Protocol` {

    public var yearlyRevenue: SchemaOrg.QuantitativeValue? {
        get { self[first: "yearlyRevenue"] }
        set { self[first: "yearlyRevenue"] = newValue }
    }

    public var yearsInOperation: SchemaOrg.QuantitativeValue? {
        get { self[first: "yearsInOperation"] }
        set { self[first: "yearsInOperation"] = newValue }
    }
}
