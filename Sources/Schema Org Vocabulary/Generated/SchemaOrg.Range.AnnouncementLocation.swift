extension SchemaOrg.Range {

    public enum AnnouncementLocation: SchemaOrg.Value, Swift.Hashable {

        case civicStructure(SchemaOrg.CivicStructure)

        case localBusiness(SchemaOrg.LocalBusiness)
    }
}

extension SchemaOrg.Range.AnnouncementLocation {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .civicStructure(let value):
            SchemaOrg.CivicStructure.serialize(value)

        case .localBusiness(let value):
            SchemaOrg.LocalBusiness.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CivicStructure.deserialize(value) {
            return .civicStructure(value)
        }
        if let value = SchemaOrg.LocalBusiness.deserialize(value) {
            return .localBusiness(value)
        }
        return nil
    }
}
