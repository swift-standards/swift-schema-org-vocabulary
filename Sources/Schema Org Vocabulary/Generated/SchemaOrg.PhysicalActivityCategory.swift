extension SchemaOrg {

    public enum PhysicalActivityCategory: SchemaOrg.Value, Swift.Hashable {

        case aerobicActivity

        case anaerobicActivity

        case balance

        case flexibility

        case leisureTimeActivity

        case occupationalActivity

        case strengthTraining

        case instance(Instance)
    }
}

extension SchemaOrg.PhysicalActivityCategory {

    public var term: Swift.String? {
        switch self {
        case .aerobicActivity:
            "AerobicActivity"

        case .anaerobicActivity:
            "AnaerobicActivity"

        case .balance:
            "Balance"

        case .flexibility:
            "Flexibility"

        case .leisureTimeActivity:
            "LeisureTimeActivity"

        case .occupationalActivity:
            "OccupationalActivity"

        case .strengthTraining:
            "StrengthTraining"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AerobicActivity":
            self = .aerobicActivity
            return

        case "AnaerobicActivity":
            self = .anaerobicActivity
            return

        case "Balance":
            self = .balance
            return

        case "Flexibility":
            self = .flexibility
            return

        case "LeisureTimeActivity":
            self = .leisureTimeActivity
            return

        case "OccupationalActivity":
            self = .occupationalActivity
            return

        case "StrengthTraining":
            self = .strengthTraining
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .aerobicActivity:
            SchemaOrg.serialize(term: "AerobicActivity")

        case .anaerobicActivity:
            SchemaOrg.serialize(term: "AnaerobicActivity")

        case .balance:
            SchemaOrg.serialize(term: "Balance")

        case .flexibility:
            SchemaOrg.serialize(term: "Flexibility")

        case .leisureTimeActivity:
            SchemaOrg.serialize(term: "LeisureTimeActivity")

        case .occupationalActivity:
            SchemaOrg.serialize(term: "OccupationalActivity")

        case .strengthTraining:
            SchemaOrg.serialize(term: "StrengthTraining")

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
