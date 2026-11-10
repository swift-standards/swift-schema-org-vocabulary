extension SchemaOrg.SizeSpecification {

    public protocol `Protocol`:
        SchemaOrg.QualitativeValue.`Protocol`,
        SchemaOrg.Domain.HasMeasurement,
        SchemaOrg.Domain.SuggestedAge,
        SchemaOrg.Domain.SuggestedGender,
        SchemaOrg.Domain.SuggestedMeasurement
    {}
}

extension SchemaOrg.SizeSpecification.`Protocol` {

    public var sizeGroup: SchemaOrg.Range.SizeGroup? {
        get { self[first: "sizeGroup"] }
        set { self[first: "sizeGroup"] = newValue }
    }

    public var sizeSystem: SchemaOrg.Range.SizeSystem? {
        get { self[first: "sizeSystem"] }
        set { self[first: "sizeSystem"] = newValue }
    }
}
