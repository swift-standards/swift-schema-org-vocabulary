extension SchemaOrg.Key where V == SchemaOrg.Certification {

    public static var companyRegistration: Self {
        Self("companyRegistration")
    }

    public static var hasCertification: Self {
        Self("hasCertification")
    }
}
