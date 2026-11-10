extension SchemaOrg {

    public enum BedType: SchemaOrg.Value, Swift.Hashable {

        case instance(Instance)
    }
}

extension SchemaOrg.BedType {

    public var term: Swift.String? {
        switch self {
        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
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
