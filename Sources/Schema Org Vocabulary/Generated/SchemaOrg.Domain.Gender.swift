extension SchemaOrg.Domain {

    public protocol Gender: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Gender {

    public var gender: SchemaOrg.Range.Gender? {
        get { self[first: "gender"] }
        set { self[first: "gender"] = newValue }
    }
}
