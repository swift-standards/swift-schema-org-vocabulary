extension SchemaOrg.MedicalConditionStage {

    public protocol `Protocol`: SchemaOrg.MedicalIntangible.`Protocol` {}
}

extension SchemaOrg.MedicalConditionStage.`Protocol` {

    public var stageAsNumber: Swift.Double? {
        get { self[first: "stageAsNumber"] }
        set { self[first: "stageAsNumber"] = newValue }
    }

    public var subStageSuffix: Swift.String? {
        get { self[first: "subStageSuffix"] }
        set { self[first: "subStageSuffix"] = newValue }
    }
}
