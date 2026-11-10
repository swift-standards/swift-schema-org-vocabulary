extension SchemaOrg.InfectiousDisease {

    public protocol `Protocol`: SchemaOrg.MedicalCondition.`Protocol` {}
}

extension SchemaOrg.InfectiousDisease.`Protocol` {

    public var infectiousAgent: Swift.String? {
        get { self[first: "infectiousAgent"] }
        set { self[first: "infectiousAgent"] = newValue }
    }

    public var infectiousAgentClass: SchemaOrg.InfectiousAgentClass? {
        get { self[first: "infectiousAgentClass"] }
        set { self[first: "infectiousAgentClass"] = newValue }
    }

    public var transmissionMethod: Swift.String? {
        get { self[first: "transmissionMethod"] }
        set { self[first: "transmissionMethod"] = newValue }
    }
}
