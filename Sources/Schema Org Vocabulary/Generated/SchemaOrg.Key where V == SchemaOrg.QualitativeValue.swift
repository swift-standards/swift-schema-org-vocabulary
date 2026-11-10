extension SchemaOrg.Key where V == SchemaOrg.QualitativeValue {

    public static var equal: Self {
        Self("equal")
    }

    public static var greater: Self {
        Self("greater")
    }

    public static var greaterOrEqual: Self {
        Self("greaterOrEqual")
    }

    public static var lesser: Self {
        Self("lesser")
    }

    public static var lesserOrEqual: Self {
        Self("lesserOrEqual")
    }

    public static var nonEqual: Self {
        Self("nonEqual")
    }
}
