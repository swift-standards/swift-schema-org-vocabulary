extension SchemaOrg.ExerciseAction {

    public protocol `Protocol`:
        SchemaOrg.PlayAction.`Protocol`,
        SchemaOrg.Domain.Distance,
        SchemaOrg.Domain.ExerciseType,
        SchemaOrg.Domain.FromLocation,
        SchemaOrg.Domain.ToLocation
    {}
}

extension SchemaOrg.ExerciseAction.`Protocol` {

    public var course: SchemaOrg.Place? {
        get { self[first: "course"] }
        set { self[first: "course"] = newValue }
    }

    public var diet: SchemaOrg.Diet? {
        get { self[first: "diet"] }
        set { self[first: "diet"] = newValue }
    }

    public var exerciseCourse: SchemaOrg.Place? {
        get { self[first: "exerciseCourse"] }
        set { self[first: "exerciseCourse"] = newValue }
    }

    public var exercisePlan: SchemaOrg.ExercisePlan? {
        get { self[first: "exercisePlan"] }
        set { self[first: "exercisePlan"] = newValue }
    }

    public var exerciseRelatedDiet: SchemaOrg.Diet? {
        get { self[first: "exerciseRelatedDiet"] }
        set { self[first: "exerciseRelatedDiet"] = newValue }
    }

    public var opponent: SchemaOrg.Person? {
        get { self[first: "opponent"] }
        set { self[first: "opponent"] = newValue }
    }

    public var sportsActivityLocation: SchemaOrg.SportsActivityLocation? {
        get { self[first: "sportsActivityLocation"] }
        set { self[first: "sportsActivityLocation"] = newValue }
    }

    public var sportsEvent: SchemaOrg.SportsEvent? {
        get { self[first: "sportsEvent"] }
        set { self[first: "sportsEvent"] = newValue }
    }

    public var sportsTeam: SchemaOrg.SportsTeam? {
        get { self[first: "sportsTeam"] }
        set { self[first: "sportsTeam"] = newValue }
    }
}
