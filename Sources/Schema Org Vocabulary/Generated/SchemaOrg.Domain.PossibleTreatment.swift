extension SchemaOrg.Domain {

    public protocol PossibleTreatment: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PossibleTreatment {

    public var possibleTreatment: SchemaOrg.Range.PossibleTreatment? {
        get { self[first: "possibleTreatment"] }
        set { self[first: "possibleTreatment"] = newValue }
    }
}
