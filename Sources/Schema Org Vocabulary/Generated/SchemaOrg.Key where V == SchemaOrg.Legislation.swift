extension SchemaOrg.Key where V == SchemaOrg.Legislation {

    public static var legislationAmends: Self {
        Self("legislationAmends")
    }

    public static var legislationApplies: Self {
        Self("legislationApplies")
    }

    public static var legislationChanges: Self {
        Self("legislationChanges")
    }

    public static var legislationCommences: Self {
        Self("legislationCommences")
    }

    public static var legislationConsolidates: Self {
        Self("legislationConsolidates")
    }

    public static var legislationCorrects: Self {
        Self("legislationCorrects")
    }

    public static var legislationEnsuresImplementationOf: Self {
        Self("legislationEnsuresImplementationOf")
    }

    public static var legislationRepeals: Self {
        Self("legislationRepeals")
    }

    public static var legislationTransposes: Self {
        Self("legislationTransposes")
    }
}
