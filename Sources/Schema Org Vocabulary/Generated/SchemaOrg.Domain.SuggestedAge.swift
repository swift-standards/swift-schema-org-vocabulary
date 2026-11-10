extension SchemaOrg.Domain {

    public protocol SuggestedAge: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SuggestedAge {

    public var suggestedAge: SchemaOrg.QuantitativeValue? {
        get { self[first: "suggestedAge"] }
        set { self[first: "suggestedAge"] = newValue }
    }
}
