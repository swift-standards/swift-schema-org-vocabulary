extension SchemaOrg.Domain {

    public protocol TargetPopulation: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TargetPopulation {

    public var targetPopulation: Swift.String? {
        get { self[first: "targetPopulation"] }
        set { self[first: "targetPopulation"] = newValue }
    }
}
