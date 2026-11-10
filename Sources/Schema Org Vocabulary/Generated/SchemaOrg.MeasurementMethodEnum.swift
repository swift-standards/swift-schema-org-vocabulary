extension SchemaOrg {

    public enum MeasurementMethodEnum: SchemaOrg.Value, Swift.Hashable {

        case exampleMeasurementMethodEnum

        case instance(Instance)
    }
}

extension SchemaOrg.MeasurementMethodEnum {

    public var term: Swift.String? {
        switch self {
        case .exampleMeasurementMethodEnum:
            "ExampleMeasurementMethodEnum"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ExampleMeasurementMethodEnum":
            self = .exampleMeasurementMethodEnum
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .exampleMeasurementMethodEnum:
            SchemaOrg.serialize(term: "ExampleMeasurementMethodEnum")

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
