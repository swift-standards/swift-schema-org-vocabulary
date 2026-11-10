extension SchemaOrg.Domain {

    public protocol RelatedTherapy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.RelatedTherapy {

    public var relatedTherapy: SchemaOrg.MedicalTherapy? {
        get { self[first: "relatedTherapy"] }
        set { self[first: "relatedTherapy"] = newValue }
    }
}
