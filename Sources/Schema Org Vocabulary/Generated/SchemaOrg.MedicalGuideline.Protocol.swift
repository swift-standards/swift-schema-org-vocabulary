extension SchemaOrg.MedicalGuideline {

    public protocol `Protocol`: SchemaOrg.MedicalEntity.`Protocol` {}
}

extension SchemaOrg.MedicalGuideline.`Protocol` {

    public var evidenceLevel: SchemaOrg.MedicalEvidenceLevel? {
        get { self[first: "evidenceLevel"] }
        set { self[first: "evidenceLevel"] = newValue }
    }

    public var evidenceOrigin: Swift.String? {
        get { self[first: "evidenceOrigin"] }
        set { self[first: "evidenceOrigin"] = newValue }
    }

    public var guidelineDate: ISO_8601.CalendarDate? {
        get { self[first: "guidelineDate"] }
        set { self[first: "guidelineDate"] = newValue }
    }

    public var guidelineSubject: SchemaOrg.MedicalEntity? {
        get { self[first: "guidelineSubject"] }
        set { self[first: "guidelineSubject"] = newValue }
    }
}
