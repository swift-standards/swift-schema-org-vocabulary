extension SchemaOrg.Domain {

    public protocol DiversityStaffingReport: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DiversityStaffingReport {

    public var diversityStaffingReport: SchemaOrg.Range.DiversityStaffingReport? {
        get { self[first: "diversityStaffingReport"] }
        set { self[first: "diversityStaffingReport"] = newValue }
    }
}
