extension SchemaOrg.Legislation {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Jurisdiction
    {}
}

extension SchemaOrg.Legislation.`Protocol` {

    public var legislationAmends: SchemaOrg.Legislation? {
        get { self[first: "legislationAmends"] }
        set { self[first: "legislationAmends"] = newValue }
    }

    public var legislationApplies: SchemaOrg.Legislation? {
        get { self[first: "legislationApplies"] }
        set { self[first: "legislationApplies"] = newValue }
    }

    public var legislationChanges: SchemaOrg.Legislation? {
        get { self[first: "legislationChanges"] }
        set { self[first: "legislationChanges"] = newValue }
    }

    public var legislationCommences: SchemaOrg.Legislation? {
        get { self[first: "legislationCommences"] }
        set { self[first: "legislationCommences"] = newValue }
    }

    public var legislationConsolidates: SchemaOrg.Legislation? {
        get { self[first: "legislationConsolidates"] }
        set { self[first: "legislationConsolidates"] = newValue }
    }

    public var legislationCorrects: SchemaOrg.Legislation? {
        get { self[first: "legislationCorrects"] }
        set { self[first: "legislationCorrects"] = newValue }
    }

    public var legislationCountersignedBy: SchemaOrg.Range.LegislationCountersignedBy? {
        get { self[first: "legislationCountersignedBy"] }
        set { self[first: "legislationCountersignedBy"] = newValue }
    }

    public var legislationDate: ISO_8601.CalendarDate? {
        get { self[first: "legislationDate"] }
        set { self[first: "legislationDate"] = newValue }
    }

    public var legislationDateOfApplicability: ISO_8601.CalendarDate? {
        get { self[first: "legislationDateOfApplicability"] }
        set { self[first: "legislationDateOfApplicability"] = newValue }
    }

    public var legislationDateVersion: ISO_8601.CalendarDate? {
        get { self[first: "legislationDateVersion"] }
        set { self[first: "legislationDateVersion"] = newValue }
    }

    public var legislationEnsuresImplementationOf: SchemaOrg.Legislation? {
        get { self[first: "legislationEnsuresImplementationOf"] }
        set { self[first: "legislationEnsuresImplementationOf"] = newValue }
    }

    public var legislationIdentifier: SchemaOrg.Range.LegislationIdentifier? {
        get { self[first: "legislationIdentifier"] }
        set { self[first: "legislationIdentifier"] = newValue }
    }

    public var legislationJurisdiction: SchemaOrg.Range.LegislationJurisdiction? {
        get { self[first: "legislationJurisdiction"] }
        set { self[first: "legislationJurisdiction"] = newValue }
    }

    public var legislationLegalForce: SchemaOrg.LegalForceStatus? {
        get { self[first: "legislationLegalForce"] }
        set { self[first: "legislationLegalForce"] = newValue }
    }

    public var legislationPassedBy: SchemaOrg.Range.LegislationPassedBy? {
        get { self[first: "legislationPassedBy"] }
        set { self[first: "legislationPassedBy"] = newValue }
    }

    public var legislationRepeals: SchemaOrg.Legislation? {
        get { self[first: "legislationRepeals"] }
        set { self[first: "legislationRepeals"] = newValue }
    }

    public var legislationResponsible: SchemaOrg.Range.LegislationResponsible? {
        get { self[first: "legislationResponsible"] }
        set { self[first: "legislationResponsible"] = newValue }
    }

    public var legislationTransposes: SchemaOrg.Legislation? {
        get { self[first: "legislationTransposes"] }
        set { self[first: "legislationTransposes"] = newValue }
    }

    public var legislationType: SchemaOrg.Range.LegislationType? {
        get { self[first: "legislationType"] }
        set { self[first: "legislationType"] = newValue }
    }
}
