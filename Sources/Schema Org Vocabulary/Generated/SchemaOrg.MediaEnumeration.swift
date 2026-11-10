extension SchemaOrg {

    public enum MediaEnumeration: SchemaOrg.Value, Swift.Hashable {

        case iptcDigitalSourceEnumeration(SchemaOrg.IPTCDigitalSourceEnumeration)

        case instance(Instance)
    }
}

extension SchemaOrg.MediaEnumeration {

    public var term: Swift.String? {
        switch self {
        case .iptcDigitalSourceEnumeration(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.IPTCDigitalSourceEnumeration(term: term) {
            self = .iptcDigitalSourceEnumeration(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .iptcDigitalSourceEnumeration(let value):
            SchemaOrg.IPTCDigitalSourceEnumeration.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.IPTCDigitalSourceEnumeration.deserialize(value) {
                return .iptcDigitalSourceEnumeration(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
