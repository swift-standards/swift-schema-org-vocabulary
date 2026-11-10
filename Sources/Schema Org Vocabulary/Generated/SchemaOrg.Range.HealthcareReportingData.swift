extension SchemaOrg.Range {

    public enum HealthcareReportingData: SchemaOrg.Value, Swift.Hashable {

        case cdcpmdRecord(SchemaOrg.CDCPMDRecord)

        case dataset(SchemaOrg.Dataset)
    }
}

extension SchemaOrg.Range.HealthcareReportingData {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .cdcpmdRecord(let value):
            SchemaOrg.CDCPMDRecord.serialize(value)

        case .dataset(let value):
            SchemaOrg.Dataset.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CDCPMDRecord.deserialize(value) {
            return .cdcpmdRecord(value)
        }
        if let value = SchemaOrg.Dataset.deserialize(value) {
            return .dataset(value)
        }
        return nil
    }
}
