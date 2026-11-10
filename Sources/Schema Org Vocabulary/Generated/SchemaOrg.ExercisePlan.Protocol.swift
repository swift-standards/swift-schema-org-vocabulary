extension SchemaOrg.ExercisePlan {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.PhysicalActivity.`Protocol`,
        SchemaOrg.Domain.ExerciseType
    {}
}

extension SchemaOrg.ExercisePlan.`Protocol` {

    public var activityDuration: SchemaOrg.Range.ActivityDuration? {
        get { self[first: "activityDuration"] }
        set { self[first: "activityDuration"] = newValue }
    }

    public var activityFrequency: SchemaOrg.Range.ActivityFrequency? {
        get { self[first: "activityFrequency"] }
        set { self[first: "activityFrequency"] = newValue }
    }

    public var additionalVariable: Swift.String? {
        get { self[first: "additionalVariable"] }
        set { self[first: "additionalVariable"] = newValue }
    }

    public var intensity: SchemaOrg.Range.Intensity? {
        get { self[first: "intensity"] }
        set { self[first: "intensity"] = newValue }
    }

    public var repetitions: SchemaOrg.Range.Repetitions? {
        get { self[first: "repetitions"] }
        set { self[first: "repetitions"] = newValue }
    }

    public var restPeriods: SchemaOrg.Range.RestPeriods? {
        get { self[first: "restPeriods"] }
        set { self[first: "restPeriods"] = newValue }
    }

    public var workload: SchemaOrg.Range.Workload? {
        get { self[first: "workload"] }
        set { self[first: "workload"] = newValue }
    }
}
