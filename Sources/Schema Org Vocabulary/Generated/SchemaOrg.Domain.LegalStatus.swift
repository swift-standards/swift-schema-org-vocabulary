extension SchemaOrg.Domain {

    public protocol LegalStatus: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.LegalStatus {

    public var legalStatus: SchemaOrg.Range.LegalStatus? {
        get { self[first: "legalStatus"] }
        set { self[first: "legalStatus"] = newValue }
    }
}
