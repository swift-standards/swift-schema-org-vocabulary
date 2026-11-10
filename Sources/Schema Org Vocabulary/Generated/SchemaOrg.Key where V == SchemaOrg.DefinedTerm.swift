extension SchemaOrg.Key where V == SchemaOrg.DefinedTerm {

    public static var biologicalRole: Self {
        Self("biologicalRole")
    }

    public static var chemicalRole: Self {
        Self("chemicalRole")
    }

    public static var hasDefinedTerm: Self {
        Self("hasDefinedTerm")
    }

    public static var potentialUse: Self {
        Self("potentialUse")
    }
}
