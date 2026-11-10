extension SchemaOrg.Range {

    public enum Bed: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case bedDetails(SchemaOrg.BedDetails)

        case bedType(SchemaOrg.BedType)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Bed {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bedDetails(let value):
            SchemaOrg.BedDetails.serialize(value)

        case .bedType(let value):
            SchemaOrg.BedType.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.BedType.deserialize(value) {
            return .bedType(value)
        }
        if let value = SchemaOrg.BedDetails.deserialize(value) {
            return .bedDetails(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
