extension SchemaOrg.Property {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.SupersededBy
    {}
}

extension SchemaOrg.Property.`Protocol` {

    public var domainIncludes: SchemaOrg.Class? {
        get { self[first: "domainIncludes"] }
        set { self[first: "domainIncludes"] = newValue }
    }

    public var inverseOf: SchemaOrg.Property? {
        get { self[first: "inverseOf"] }
        set { self[first: "inverseOf"] = newValue }
    }

    public var rangeIncludes: SchemaOrg.Class? {
        get { self[first: "rangeIncludes"] }
        set { self[first: "rangeIncludes"] = newValue }
    }
}
