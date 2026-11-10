extension SchemaOrg.Domain {

    public protocol Diagnosis: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Diagnosis {

    public var diagnosis: SchemaOrg.MedicalCondition? {
        get { self[first: "diagnosis"] }
        set { self[first: "diagnosis"] = newValue }
    }
}
