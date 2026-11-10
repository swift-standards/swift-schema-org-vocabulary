extension SchemaOrg.Domain {

    public protocol ActiveIngredient: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ActiveIngredient {

    public var activeIngredient: Swift.String? {
        get { self[first: "activeIngredient"] }
        set { self[first: "activeIngredient"] = newValue }
    }
}
