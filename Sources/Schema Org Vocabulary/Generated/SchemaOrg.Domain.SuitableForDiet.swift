extension SchemaOrg.Domain {

    public protocol SuitableForDiet: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SuitableForDiet {

    public var suitableForDiet: SchemaOrg.Range.SuitableForDiet? {
        get { self[first: "suitableForDiet"] }
        set { self[first: "suitableForDiet"] = newValue }
    }
}
