extension SchemaOrg.ParentAudience {

    public protocol `Protocol`: SchemaOrg.PeopleAudience.`Protocol` {}
}

extension SchemaOrg.ParentAudience.`Protocol` {

    public var childMaxAge: Swift.Double? {
        get { self[first: "childMaxAge"] }
        set { self[first: "childMaxAge"] = newValue }
    }

    public var childMinAge: Swift.Double? {
        get { self[first: "childMinAge"] }
        set { self[first: "childMinAge"] = newValue }
    }
}
