extension SchemaOrg {

    public enum QualitativeValue: SchemaOrg.Value, Swift.Hashable {

        case bedType(SchemaOrg.BedType)

        case driveWheelConfigurationValue(SchemaOrg.DriveWheelConfigurationValue)

        case sizeSpecification(SchemaOrg.SizeSpecification)

        case steeringPositionValue(SchemaOrg.SteeringPositionValue)

        case instance(Instance)
    }
}

extension SchemaOrg.QualitativeValue {

    public var term: Swift.String? {
        switch self {
        case .bedType(let value):
            value.term

        case .driveWheelConfigurationValue(let value):
            value.term

        case .sizeSpecification(let value):
            value.term

        case .steeringPositionValue(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.BedType(term: term) {
            self = .bedType(value)
            return
        }
        if let value = SchemaOrg.DriveWheelConfigurationValue(term: term) {
            self = .driveWheelConfigurationValue(value)
            return
        }
        if let value = SchemaOrg.SizeSpecification(term: term) {
            self = .sizeSpecification(value)
            return
        }
        if let value = SchemaOrg.SteeringPositionValue(term: term) {
            self = .steeringPositionValue(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bedType(let value):
            SchemaOrg.BedType.serialize(value)

        case .driveWheelConfigurationValue(let value):
            SchemaOrg.DriveWheelConfigurationValue.serialize(value)

        case .sizeSpecification(let value):
            SchemaOrg.SizeSpecification.serialize(value)

        case .steeringPositionValue(let value):
            SchemaOrg.SteeringPositionValue.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.BedType.deserialize(value) {
                return .bedType(value)
            }
            if let value = SchemaOrg.DriveWheelConfigurationValue.deserialize(value) {
                return .driveWheelConfigurationValue(value)
            }
            if let value = SchemaOrg.SizeSpecification.deserialize(value) {
                return .sizeSpecification(value)
            }
            if let value = SchemaOrg.SteeringPositionValue.deserialize(value) {
                return .steeringPositionValue(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
