extension SchemaOrg.Domain {

    public protocol ExerciseType: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ExerciseType {

    public var exerciseType: Swift.String? {
        get { self[first: "exerciseType"] }
        set { self[first: "exerciseType"] = newValue }
    }
}
