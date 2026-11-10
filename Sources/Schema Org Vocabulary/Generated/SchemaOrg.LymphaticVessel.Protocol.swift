extension SchemaOrg.LymphaticVessel {

    public protocol `Protocol`:
        SchemaOrg.Vessel.`Protocol`,
        SchemaOrg.Domain.RegionDrained
    {}
}

extension SchemaOrg.LymphaticVessel.`Protocol` {

    public var originatesFrom: SchemaOrg.Vessel? {
        get { self[first: "originatesFrom"] }
        set { self[first: "originatesFrom"] = newValue }
    }

    public var runsTo: SchemaOrg.Vessel? {
        get { self[first: "runsTo"] }
        set { self[first: "runsTo"] = newValue }
    }
}
