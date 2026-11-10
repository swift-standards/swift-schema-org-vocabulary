extension SchemaOrg.Domain {

    public protocol DoseSchedule: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DoseSchedule {

    public var doseSchedule: SchemaOrg.DoseSchedule? {
        get { self[first: "doseSchedule"] }
        set { self[first: "doseSchedule"] = newValue }
    }
}
