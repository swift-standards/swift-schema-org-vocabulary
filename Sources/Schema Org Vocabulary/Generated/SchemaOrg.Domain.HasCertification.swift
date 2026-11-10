extension SchemaOrg.Domain {

    public protocol HasCertification: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasCertification {

    public var hasCertification: SchemaOrg.Certification? {
        get { self[first: "hasCertification"] }
        set { self[first: "hasCertification"] = newValue }
    }
}
