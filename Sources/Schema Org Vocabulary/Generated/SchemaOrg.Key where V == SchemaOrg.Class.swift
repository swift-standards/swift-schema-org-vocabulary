extension SchemaOrg.Key where V == SchemaOrg.Class {

    public static var domainIncludes: Self {
        Self("domainIncludes")
    }

    public static var populationType: Self {
        Self("populationType")
    }

    public static var rangeIncludes: Self {
        Self("rangeIncludes")
    }
}
