extension SchemaOrg.Recipe {

    public protocol `Protocol`:
        SchemaOrg.HowTo.`Protocol`,
        SchemaOrg.Domain.Nutrition,
        SchemaOrg.Domain.SuitableForDiet
    {}
}

extension SchemaOrg.Recipe.`Protocol` {

    public var cookTime: ISO_8601.Duration? {
        get { self[first: "cookTime"] }
        set { self[first: "cookTime"] = newValue }
    }

    public var cookingMethod: Swift.String? {
        get { self[first: "cookingMethod"] }
        set { self[first: "cookingMethod"] = newValue }
    }

    public var ingredients: Swift.String? {
        get { self[first: "ingredients"] }
        set { self[first: "ingredients"] = newValue }
    }

    public var recipeCategory: Swift.String? {
        get { self[first: "recipeCategory"] }
        set { self[first: "recipeCategory"] = newValue }
    }

    public var recipeCuisine: Swift.String? {
        get { self[first: "recipeCuisine"] }
        set { self[first: "recipeCuisine"] = newValue }
    }

    public var recipeIngredient: SchemaOrg.Range.RecipeIngredient? {
        get { self[first: "recipeIngredient"] }
        set { self[first: "recipeIngredient"] = newValue }
    }

    public var recipeInstructions: SchemaOrg.Range.RecipeInstructions? {
        get { self[first: "recipeInstructions"] }
        set { self[first: "recipeInstructions"] = newValue }
    }

    public var recipeYield: SchemaOrg.Range.RecipeYield? {
        get { self[first: "recipeYield"] }
        set { self[first: "recipeYield"] = newValue }
    }
}
