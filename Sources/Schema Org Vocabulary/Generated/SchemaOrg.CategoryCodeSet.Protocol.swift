extension SchemaOrg.CategoryCodeSet {

    public protocol `Protocol`: SchemaOrg.DefinedTermSet.`Protocol` {}
}

extension SchemaOrg.CategoryCodeSet.`Protocol` {

    public var hasCategoryCode: SchemaOrg.CategoryCode? {
        get { self[first: "hasCategoryCode"] }
        set { self[first: "hasCategoryCode"] = newValue }
    }
}
