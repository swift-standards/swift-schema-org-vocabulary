extension SchemaOrg {

    public enum MeasurementTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case bodyMeasurementTypeEnumeration(SchemaOrg.BodyMeasurementTypeEnumeration)

        case wearableMeasurementTypeEnumeration(SchemaOrg.WearableMeasurementTypeEnumeration)

        case instance(Instance)
    }
}

extension SchemaOrg.MeasurementTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .bodyMeasurementTypeEnumeration(let value):
            value.term

        case .wearableMeasurementTypeEnumeration(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.BodyMeasurementTypeEnumeration(term: term) {
            self = .bodyMeasurementTypeEnumeration(value)
            return
        }
        if let value = SchemaOrg.WearableMeasurementTypeEnumeration(term: term) {
            self = .wearableMeasurementTypeEnumeration(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bodyMeasurementTypeEnumeration(let value):
            SchemaOrg.BodyMeasurementTypeEnumeration.serialize(value)

        case .wearableMeasurementTypeEnumeration(let value):
            SchemaOrg.WearableMeasurementTypeEnumeration.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.BodyMeasurementTypeEnumeration.deserialize(value) {
                return .bodyMeasurementTypeEnumeration(value)
            }
            if let value = SchemaOrg.WearableMeasurementTypeEnumeration.deserialize(value) {
                return .wearableMeasurementTypeEnumeration(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
