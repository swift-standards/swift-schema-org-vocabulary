extension SchemaOrg.CookAction {

    public protocol `Protocol`: SchemaOrg.CreateAction.`Protocol` {}
}

extension SchemaOrg.CookAction.`Protocol` {

    public var foodEstablishment: SchemaOrg.Range.FoodEstablishment? {
        get { self[first: "foodEstablishment"] }
        set { self[first: "foodEstablishment"] = newValue }
    }

    public var foodEvent: SchemaOrg.FoodEvent? {
        get { self[first: "foodEvent"] }
        set { self[first: "foodEvent"] = newValue }
    }

    public var recipe: SchemaOrg.Recipe? {
        get { self[first: "recipe"] }
        set { self[first: "recipe"] = newValue }
    }
}
