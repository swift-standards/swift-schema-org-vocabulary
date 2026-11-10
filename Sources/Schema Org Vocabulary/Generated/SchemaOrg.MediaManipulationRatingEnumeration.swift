extension SchemaOrg {

    public enum MediaManipulationRatingEnumeration: SchemaOrg.Value, Swift.Hashable {

        case decontextualizedContent

        case editedOrCroppedContent

        case originalMediaContent

        case satireOrParodyContent

        case stagedContent

        case transformedContent

        case instance(Instance)
    }
}

extension SchemaOrg.MediaManipulationRatingEnumeration {

    public var term: Swift.String? {
        switch self {
        case .decontextualizedContent:
            "DecontextualizedContent"

        case .editedOrCroppedContent:
            "EditedOrCroppedContent"

        case .originalMediaContent:
            "OriginalMediaContent"

        case .satireOrParodyContent:
            "SatireOrParodyContent"

        case .stagedContent:
            "StagedContent"

        case .transformedContent:
            "TransformedContent"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DecontextualizedContent":
            self = .decontextualizedContent
            return

        case "EditedOrCroppedContent":
            self = .editedOrCroppedContent
            return

        case "OriginalMediaContent":
            self = .originalMediaContent
            return

        case "SatireOrParodyContent":
            self = .satireOrParodyContent
            return

        case "StagedContent":
            self = .stagedContent
            return

        case "TransformedContent":
            self = .transformedContent
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .decontextualizedContent:
            SchemaOrg.serialize(term: "DecontextualizedContent")

        case .editedOrCroppedContent:
            SchemaOrg.serialize(term: "EditedOrCroppedContent")

        case .originalMediaContent:
            SchemaOrg.serialize(term: "OriginalMediaContent")

        case .satireOrParodyContent:
            SchemaOrg.serialize(term: "SatireOrParodyContent")

        case .stagedContent:
            SchemaOrg.serialize(term: "StagedContent")

        case .transformedContent:
            SchemaOrg.serialize(term: "TransformedContent")

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
