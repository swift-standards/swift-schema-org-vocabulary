extension SchemaOrg.Domain {

    public protocol TrainingSalary: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TrainingSalary {

    public var trainingSalary: SchemaOrg.MonetaryAmountDistribution? {
        get { self[first: "trainingSalary"] }
        set { self[first: "trainingSalary"] = newValue }
    }
}
