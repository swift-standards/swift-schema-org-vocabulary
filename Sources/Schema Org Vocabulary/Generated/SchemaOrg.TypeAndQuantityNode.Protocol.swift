extension SchemaOrg.TypeAndQuantityNode {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.BusinessFunction,
        SchemaOrg.Domain.TypeOfGood,
        SchemaOrg.Domain.UnitCode,
        SchemaOrg.Domain.UnitText
    {}
}

extension SchemaOrg.TypeAndQuantityNode.`Protocol` {

    public var amountOfThisGood: Swift.Double? {
        get { self[first: "amountOfThisGood"] }
        set { self[first: "amountOfThisGood"] = newValue }
    }
}
