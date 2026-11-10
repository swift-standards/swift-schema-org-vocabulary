extension SchemaOrg.Domain {

    public protocol Nutrition: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Nutrition {

    public var nutrition: SchemaOrg.NutritionInformation? {
        get { self[first: "nutrition"] }
        set { self[first: "nutrition"] = newValue }
    }
}
