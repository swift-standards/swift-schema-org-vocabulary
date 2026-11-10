extension SchemaOrg.Domain {

    public protocol EstimatedCost: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EstimatedCost {

    public var estimatedCost: SchemaOrg.Range.EstimatedCost? {
        get { self[first: "estimatedCost"] }
        set { self[first: "estimatedCost"] = newValue }
    }
}
