extension SchemaOrg.Range {

    public enum DriveWheelConfiguration: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case driveWheelConfigurationValue(SchemaOrg.DriveWheelConfigurationValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.DriveWheelConfiguration {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .driveWheelConfigurationValue(let value):
            SchemaOrg.DriveWheelConfigurationValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.DriveWheelConfigurationValue.deserialize(value) {
            return .driveWheelConfigurationValue(value)
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
