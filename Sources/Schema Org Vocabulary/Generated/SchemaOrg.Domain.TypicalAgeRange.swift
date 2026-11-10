extension SchemaOrg.Domain {

    public protocol TypicalAgeRange: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TypicalAgeRange {

    public var typicalAgeRange: Swift.String? {
        get { self[first: "typicalAgeRange"] }
        set { self[first: "typicalAgeRange"] = newValue }
    }
}
