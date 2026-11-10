extension SchemaOrg {

    public enum SizeSystemEnumeration: SchemaOrg.Value, Swift.Hashable {

        case sizeSystemImperial

        case sizeSystemMetric

        case wearableSizeSystemEnumeration(SchemaOrg.WearableSizeSystemEnumeration)

        case instance(Instance)
    }
}

extension SchemaOrg.SizeSystemEnumeration {

    public var term: Swift.String? {
        switch self {
        case .sizeSystemImperial:
            "SizeSystemImperial"

        case .sizeSystemMetric:
            "SizeSystemMetric"

        case .wearableSizeSystemEnumeration(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "SizeSystemImperial":
            self = .sizeSystemImperial
            return

        case "SizeSystemMetric":
            self = .sizeSystemMetric
            return

        default:
            break
        }
        if let value = SchemaOrg.WearableSizeSystemEnumeration(term: term) {
            self = .wearableSizeSystemEnumeration(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .sizeSystemImperial:
            SchemaOrg.serialize(term: "SizeSystemImperial")

        case .sizeSystemMetric:
            SchemaOrg.serialize(term: "SizeSystemMetric")

        case .wearableSizeSystemEnumeration(let value):
            SchemaOrg.WearableSizeSystemEnumeration.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.WearableSizeSystemEnumeration.deserialize(value) {
                return .wearableSizeSystemEnumeration(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
