extension SchemaOrg.LegislationObject {

    public protocol `Protocol`:
        SchemaOrg.Legislation.`Protocol`,
        SchemaOrg.MediaObject.`Protocol`
    {}
}

extension SchemaOrg.LegislationObject.`Protocol` {

    public var legislationLegalValue: SchemaOrg.LegalValueLevel? {
        get { self[first: "legislationLegalValue"] }
        set { self[first: "legislationLegalValue"] = newValue }
    }
}
