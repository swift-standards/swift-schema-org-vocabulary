extension SchemaOrg {

    public enum DriveWheelConfigurationValue: SchemaOrg.Value, Swift.Hashable {

        case allWheelDriveConfiguration

        case fourWheelDriveConfiguration

        case frontWheelDriveConfiguration

        case rearWheelDriveConfiguration

        case instance(Instance)
    }
}

extension SchemaOrg.DriveWheelConfigurationValue {

    public var term: Swift.String? {
        switch self {
        case .allWheelDriveConfiguration:
            "AllWheelDriveConfiguration"

        case .fourWheelDriveConfiguration:
            "FourWheelDriveConfiguration"

        case .frontWheelDriveConfiguration:
            "FrontWheelDriveConfiguration"

        case .rearWheelDriveConfiguration:
            "RearWheelDriveConfiguration"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AllWheelDriveConfiguration":
            self = .allWheelDriveConfiguration
            return

        case "FourWheelDriveConfiguration":
            self = .fourWheelDriveConfiguration
            return

        case "FrontWheelDriveConfiguration":
            self = .frontWheelDriveConfiguration
            return

        case "RearWheelDriveConfiguration":
            self = .rearWheelDriveConfiguration
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .allWheelDriveConfiguration:
            SchemaOrg.serialize(term: "AllWheelDriveConfiguration")

        case .fourWheelDriveConfiguration:
            SchemaOrg.serialize(term: "FourWheelDriveConfiguration")

        case .frontWheelDriveConfiguration:
            SchemaOrg.serialize(term: "FrontWheelDriveConfiguration")

        case .rearWheelDriveConfiguration:
            SchemaOrg.serialize(term: "RearWheelDriveConfiguration")

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
