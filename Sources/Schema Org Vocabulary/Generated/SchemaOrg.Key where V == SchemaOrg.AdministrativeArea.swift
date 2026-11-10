extension SchemaOrg.Key where V == SchemaOrg.AdministrativeArea {

    public static var applicableLocation: Self {
        Self("applicableLocation")
    }

    public static var applicantLocationRequirements: Self {
        Self("applicantLocationRequirements")
    }

    public static var availableIn: Self {
        Self("availableIn")
    }

    public static var geographicArea: Self {
        Self("geographicArea")
    }

    public static var occupationLocation: Self {
        Self("occupationLocation")
    }

    public static var studyLocation: Self {
        Self("studyLocation")
    }

    public static var validIn: Self {
        Self("validIn")
    }
}
