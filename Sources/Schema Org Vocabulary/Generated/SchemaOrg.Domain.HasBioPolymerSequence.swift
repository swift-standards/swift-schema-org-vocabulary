extension SchemaOrg.Domain {

    public protocol HasBioPolymerSequence: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasBioPolymerSequence {

    public var hasBioPolymerSequence: Swift.String? {
        get { self[first: "hasBioPolymerSequence"] }
        set { self[first: "hasBioPolymerSequence"] = newValue }
    }
}
