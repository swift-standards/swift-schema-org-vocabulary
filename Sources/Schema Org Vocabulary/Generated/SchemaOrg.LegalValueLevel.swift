extension SchemaOrg {

    public enum LegalValueLevel: SchemaOrg.Value, Swift.Hashable {

        case authoritativeLegalValue

        case definitiveLegalValue

        case officialLegalValue

        case unofficialLegalValue

        case instance(Instance)
    }
}

extension SchemaOrg.LegalValueLevel {

    public var term: Swift.String? {
        switch self {
        case .authoritativeLegalValue:
            "AuthoritativeLegalValue"

        case .definitiveLegalValue:
            "DefinitiveLegalValue"

        case .officialLegalValue:
            "OfficialLegalValue"

        case .unofficialLegalValue:
            "UnofficialLegalValue"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AuthoritativeLegalValue":
            self = .authoritativeLegalValue
            return

        case "DefinitiveLegalValue":
            self = .definitiveLegalValue
            return

        case "OfficialLegalValue":
            self = .officialLegalValue
            return

        case "UnofficialLegalValue":
            self = .unofficialLegalValue
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .authoritativeLegalValue:
            SchemaOrg.serialize(term: "AuthoritativeLegalValue")

        case .definitiveLegalValue:
            SchemaOrg.serialize(term: "DefinitiveLegalValue")

        case .officialLegalValue:
            SchemaOrg.serialize(term: "OfficialLegalValue")

        case .unofficialLegalValue:
            SchemaOrg.serialize(term: "UnofficialLegalValue")

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
