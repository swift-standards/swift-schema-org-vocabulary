extension SchemaOrg {

    public enum IncentiveStatus: SchemaOrg.Value, Swift.Hashable {

        case incentiveStatusActive

        case incentiveStatusInDevelopment

        case incentiveStatusOnHold

        case incentiveStatusRetired

        case instance(Instance)
    }
}

extension SchemaOrg.IncentiveStatus {

    public var term: Swift.String? {
        switch self {
        case .incentiveStatusActive:
            "IncentiveStatusActive"

        case .incentiveStatusInDevelopment:
            "IncentiveStatusInDevelopment"

        case .incentiveStatusOnHold:
            "IncentiveStatusOnHold"

        case .incentiveStatusRetired:
            "IncentiveStatusRetired"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "IncentiveStatusActive":
            self = .incentiveStatusActive
            return

        case "IncentiveStatusInDevelopment":
            self = .incentiveStatusInDevelopment
            return

        case "IncentiveStatusOnHold":
            self = .incentiveStatusOnHold
            return

        case "IncentiveStatusRetired":
            self = .incentiveStatusRetired
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .incentiveStatusActive:
            SchemaOrg.serialize(term: "IncentiveStatusActive")

        case .incentiveStatusInDevelopment:
            SchemaOrg.serialize(term: "IncentiveStatusInDevelopment")

        case .incentiveStatusOnHold:
            SchemaOrg.serialize(term: "IncentiveStatusOnHold")

        case .incentiveStatusRetired:
            SchemaOrg.serialize(term: "IncentiveStatusRetired")

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
