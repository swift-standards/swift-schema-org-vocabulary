extension SchemaOrg.TechArticle {

    public protocol `Protocol`: SchemaOrg.Article.`Protocol` {}
}

extension SchemaOrg.TechArticle.`Protocol` {

    public var dependencies: Swift.String? {
        get { self[first: "dependencies"] }
        set { self[first: "dependencies"] = newValue }
    }

    public var proficiencyLevel: Swift.String? {
        get { self[first: "proficiencyLevel"] }
        set { self[first: "proficiencyLevel"] = newValue }
    }
}
