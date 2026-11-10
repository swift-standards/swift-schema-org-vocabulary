extension SchemaOrg.MovieTheater {

    public protocol `Protocol`:
        SchemaOrg.CivicStructure.`Protocol`,
        SchemaOrg.EntertainmentBusiness.`Protocol`
    {}
}

extension SchemaOrg.MovieTheater.`Protocol` {

    public var screenCount: Swift.Double? {
        get { self[first: "screenCount"] }
        set { self[first: "screenCount"] = newValue }
    }
}
