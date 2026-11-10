extension SchemaOrg.Domain {

    public protocol NegativeNotes: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NegativeNotes {

    public var negativeNotes: SchemaOrg.Range.NegativeNotes? {
        get { self[first: "negativeNotes"] }
        set { self[first: "negativeNotes"] = newValue }
    }
}
