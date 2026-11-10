extension SchemaOrg {

    public enum NonprofitType: SchemaOrg.Value, Swift.Hashable {

        case deNonprofitType(SchemaOrg.DENonprofitType)

        case itNonprofitType(SchemaOrg.ITNonprofitType)

        case nlNonprofitType(SchemaOrg.NLNonprofitType)

        case ukNonprofitType(SchemaOrg.UKNonprofitType)

        case usNonprofitType(SchemaOrg.USNonprofitType)

        case instance(Instance)
    }
}

extension SchemaOrg.NonprofitType {

    public var term: Swift.String? {
        switch self {
        case .deNonprofitType(let value):
            value.term

        case .itNonprofitType(let value):
            value.term

        case .nlNonprofitType(let value):
            value.term

        case .ukNonprofitType(let value):
            value.term

        case .usNonprofitType(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.DENonprofitType(term: term) {
            self = .deNonprofitType(value)
            return
        }
        if let value = SchemaOrg.ITNonprofitType(term: term) {
            self = .itNonprofitType(value)
            return
        }
        if let value = SchemaOrg.NLNonprofitType(term: term) {
            self = .nlNonprofitType(value)
            return
        }
        if let value = SchemaOrg.UKNonprofitType(term: term) {
            self = .ukNonprofitType(value)
            return
        }
        if let value = SchemaOrg.USNonprofitType(term: term) {
            self = .usNonprofitType(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .deNonprofitType(let value):
            SchemaOrg.DENonprofitType.serialize(value)

        case .itNonprofitType(let value):
            SchemaOrg.ITNonprofitType.serialize(value)

        case .nlNonprofitType(let value):
            SchemaOrg.NLNonprofitType.serialize(value)

        case .ukNonprofitType(let value):
            SchemaOrg.UKNonprofitType.serialize(value)

        case .usNonprofitType(let value):
            SchemaOrg.USNonprofitType.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.DENonprofitType.deserialize(value) {
                return .deNonprofitType(value)
            }
            if let value = SchemaOrg.ITNonprofitType.deserialize(value) {
                return .itNonprofitType(value)
            }
            if let value = SchemaOrg.NLNonprofitType.deserialize(value) {
                return .nlNonprofitType(value)
            }
            if let value = SchemaOrg.UKNonprofitType.deserialize(value) {
                return .ukNonprofitType(value)
            }
            if let value = SchemaOrg.USNonprofitType.deserialize(value) {
                return .usNonprofitType(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
