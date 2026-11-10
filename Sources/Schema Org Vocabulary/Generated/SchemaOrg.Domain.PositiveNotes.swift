extension SchemaOrg.Domain {

    public protocol PositiveNotes: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PositiveNotes {

    public var positiveNotes: SchemaOrg.Range.PositiveNotes? {
        get { self[first: "positiveNotes"] }
        set { self[first: "positiveNotes"] = newValue }
    }
}
