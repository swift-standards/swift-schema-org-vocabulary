extension SchemaOrg.MedicalScholarlyArticle {

    public protocol `Protocol`: SchemaOrg.ScholarlyArticle.`Protocol` {}
}

extension SchemaOrg.MedicalScholarlyArticle.`Protocol` {

    public var publicationType: Swift.String? {
        get { self[first: "publicationType"] }
        set { self[first: "publicationType"] = newValue }
    }
}
