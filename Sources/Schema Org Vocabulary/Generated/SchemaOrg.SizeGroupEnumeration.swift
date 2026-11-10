extension SchemaOrg {

    public enum SizeGroupEnumeration: SchemaOrg.Value, Swift.Hashable {

        case wearableSizeGroupEnumeration(SchemaOrg.WearableSizeGroupEnumeration)

        case instance(Instance)
    }
}

extension SchemaOrg.SizeGroupEnumeration {

    public var term: Swift.String? {
        switch self {
        case .wearableSizeGroupEnumeration(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.WearableSizeGroupEnumeration(term: term) {
            self = .wearableSizeGroupEnumeration(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .wearableSizeGroupEnumeration(let value):
            SchemaOrg.WearableSizeGroupEnumeration.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.WearableSizeGroupEnumeration.deserialize(value) {
                return .wearableSizeGroupEnumeration(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
