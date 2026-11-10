extension SchemaOrg {

    public enum MedicalTrialDesign: SchemaOrg.Value, Swift.Hashable {

        case doubleBlindedTrial

        case internationalTrial

        case multiCenterTrial

        case openTrial

        case placeboControlledTrial

        case randomizedTrial

        case singleBlindedTrial

        case singleCenterTrial

        case tripleBlindedTrial

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalTrialDesign {

    public var term: Swift.String? {
        switch self {
        case .doubleBlindedTrial:
            "DoubleBlindedTrial"

        case .internationalTrial:
            "InternationalTrial"

        case .multiCenterTrial:
            "MultiCenterTrial"

        case .openTrial:
            "OpenTrial"

        case .placeboControlledTrial:
            "PlaceboControlledTrial"

        case .randomizedTrial:
            "RandomizedTrial"

        case .singleBlindedTrial:
            "SingleBlindedTrial"

        case .singleCenterTrial:
            "SingleCenterTrial"

        case .tripleBlindedTrial:
            "TripleBlindedTrial"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DoubleBlindedTrial":
            self = .doubleBlindedTrial
            return

        case "InternationalTrial":
            self = .internationalTrial
            return

        case "MultiCenterTrial":
            self = .multiCenterTrial
            return

        case "OpenTrial":
            self = .openTrial
            return

        case "PlaceboControlledTrial":
            self = .placeboControlledTrial
            return

        case "RandomizedTrial":
            self = .randomizedTrial
            return

        case "SingleBlindedTrial":
            self = .singleBlindedTrial
            return

        case "SingleCenterTrial":
            self = .singleCenterTrial
            return

        case "TripleBlindedTrial":
            self = .tripleBlindedTrial
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .doubleBlindedTrial:
            SchemaOrg.serialize(term: "DoubleBlindedTrial")

        case .internationalTrial:
            SchemaOrg.serialize(term: "InternationalTrial")

        case .multiCenterTrial:
            SchemaOrg.serialize(term: "MultiCenterTrial")

        case .openTrial:
            SchemaOrg.serialize(term: "OpenTrial")

        case .placeboControlledTrial:
            SchemaOrg.serialize(term: "PlaceboControlledTrial")

        case .randomizedTrial:
            SchemaOrg.serialize(term: "RandomizedTrial")

        case .singleBlindedTrial:
            SchemaOrg.serialize(term: "SingleBlindedTrial")

        case .singleCenterTrial:
            SchemaOrg.serialize(term: "SingleCenterTrial")

        case .tripleBlindedTrial:
            SchemaOrg.serialize(term: "TripleBlindedTrial")

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
