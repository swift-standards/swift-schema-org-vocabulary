extension SchemaOrg.NutritionInformation {

    public protocol `Protocol`: SchemaOrg.StructuredValue.`Protocol` {}
}

extension SchemaOrg.NutritionInformation.`Protocol` {

    public var calories: Swift.String? {
        get { self[first: "calories"] }
        set { self[first: "calories"] = newValue }
    }

    public var carbohydrateContent: Swift.String? {
        get { self[first: "carbohydrateContent"] }
        set { self[first: "carbohydrateContent"] = newValue }
    }

    public var cholesterolContent: Swift.String? {
        get { self[first: "cholesterolContent"] }
        set { self[first: "cholesterolContent"] = newValue }
    }

    public var fatContent: Swift.String? {
        get { self[first: "fatContent"] }
        set { self[first: "fatContent"] = newValue }
    }

    public var fiberContent: Swift.String? {
        get { self[first: "fiberContent"] }
        set { self[first: "fiberContent"] = newValue }
    }

    public var proteinContent: Swift.String? {
        get { self[first: "proteinContent"] }
        set { self[first: "proteinContent"] = newValue }
    }

    public var saturatedFatContent: Swift.String? {
        get { self[first: "saturatedFatContent"] }
        set { self[first: "saturatedFatContent"] = newValue }
    }

    public var servingSize: Swift.String? {
        get { self[first: "servingSize"] }
        set { self[first: "servingSize"] = newValue }
    }

    public var sodiumContent: Swift.String? {
        get { self[first: "sodiumContent"] }
        set { self[first: "sodiumContent"] = newValue }
    }

    public var sugarContent: Swift.String? {
        get { self[first: "sugarContent"] }
        set { self[first: "sugarContent"] = newValue }
    }

    public var transFatContent: Swift.String? {
        get { self[first: "transFatContent"] }
        set { self[first: "transFatContent"] = newValue }
    }

    public var unsaturatedFatContent: Swift.String? {
        get { self[first: "unsaturatedFatContent"] }
        set { self[first: "unsaturatedFatContent"] = newValue }
    }
}
