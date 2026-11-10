extension SchemaOrg.Certification {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.About,
        SchemaOrg.Domain.DatePublished,
        SchemaOrg.Domain.Expires,
        SchemaOrg.Domain.HasMeasurement,
        SchemaOrg.Domain.IssuedBy,
        SchemaOrg.Domain.Logo,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidIn
    {}
}

extension SchemaOrg.Certification.`Protocol` {

    public var auditDate: SchemaOrg.Range.AuditDate? {
        get { self[first: "auditDate"] }
        set { self[first: "auditDate"] = newValue }
    }

    public var certificationIdentification: SchemaOrg.Range.CertificationIdentification? {
        get { self[first: "certificationIdentification"] }
        set { self[first: "certificationIdentification"] = newValue }
    }

    public var certificationRating: SchemaOrg.Rating? {
        get { self[first: "certificationRating"] }
        set { self[first: "certificationRating"] = newValue }
    }

    public var certificationStatus: SchemaOrg.CertificationStatusEnumeration? {
        get { self[first: "certificationStatus"] }
        set { self[first: "certificationStatus"] = newValue }
    }
}
