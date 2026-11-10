extension SchemaOrg.Domain {

    public protocol SuggestedGender: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SuggestedGender {

    public var suggestedGender: SchemaOrg.Range.SuggestedGender? {
        get { self[first: "suggestedGender"] }
        set { self[first: "suggestedGender"] = newValue }
    }
}
