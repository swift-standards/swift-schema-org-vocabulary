extension SchemaOrg.Muscle {

    public protocol `Protocol`: SchemaOrg.AnatomicalStructure.`Protocol` {}
}

extension SchemaOrg.Muscle.`Protocol` {

    public var antagonist: SchemaOrg.Muscle? {
        get { self[first: "antagonist"] }
        set { self[first: "antagonist"] = newValue }
    }

    public var bloodSupply: SchemaOrg.Vessel? {
        get { self[first: "bloodSupply"] }
        set { self[first: "bloodSupply"] = newValue }
    }

    public var insertion: SchemaOrg.AnatomicalStructure? {
        get { self[first: "insertion"] }
        set { self[first: "insertion"] = newValue }
    }

    public var muscleAction: Swift.String? {
        get { self[first: "muscleAction"] }
        set { self[first: "muscleAction"] = newValue }
    }

    public var nerve: SchemaOrg.Nerve? {
        get { self[first: "nerve"] }
        set { self[first: "nerve"] = newValue }
    }
}
