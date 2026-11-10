extension SchemaOrg.DrugCost {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.ApplicableLocation,
        SchemaOrg.Domain.DrugUnit
    {}
}

extension SchemaOrg.DrugCost.`Protocol` {

    public var costCategory: SchemaOrg.DrugCostCategory? {
        get { self[first: "costCategory"] }
        set { self[first: "costCategory"] = newValue }
    }

    public var costCurrency: Swift.String? {
        get { self[first: "costCurrency"] }
        set { self[first: "costCurrency"] = newValue }
    }

    public var costOrigin: Swift.String? {
        get { self[first: "costOrigin"] }
        set { self[first: "costOrigin"] = newValue }
    }

    public var costPerUnit: SchemaOrg.Range.CostPerUnit? {
        get { self[first: "costPerUnit"] }
        set { self[first: "costPerUnit"] = newValue }
    }
}
