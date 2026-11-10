extension SchemaOrg {

    public enum IncentiveType: SchemaOrg.Value, Swift.Hashable {

        case incentiveTypeLoan

        case incentiveTypeRebateOrSubsidy

        case incentiveTypeTaxCredit

        case incentiveTypeTaxDeduction

        case incentiveTypeTaxWaiver

        case instance(Instance)
    }
}

extension SchemaOrg.IncentiveType {

    public var term: Swift.String? {
        switch self {
        case .incentiveTypeLoan:
            "IncentiveTypeLoan"

        case .incentiveTypeRebateOrSubsidy:
            "IncentiveTypeRebateOrSubsidy"

        case .incentiveTypeTaxCredit:
            "IncentiveTypeTaxCredit"

        case .incentiveTypeTaxDeduction:
            "IncentiveTypeTaxDeduction"

        case .incentiveTypeTaxWaiver:
            "IncentiveTypeTaxWaiver"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "IncentiveTypeLoan":
            self = .incentiveTypeLoan
            return

        case "IncentiveTypeRebateOrSubsidy":
            self = .incentiveTypeRebateOrSubsidy
            return

        case "IncentiveTypeTaxCredit":
            self = .incentiveTypeTaxCredit
            return

        case "IncentiveTypeTaxDeduction":
            self = .incentiveTypeTaxDeduction
            return

        case "IncentiveTypeTaxWaiver":
            self = .incentiveTypeTaxWaiver
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .incentiveTypeLoan:
            SchemaOrg.serialize(term: "IncentiveTypeLoan")

        case .incentiveTypeRebateOrSubsidy:
            SchemaOrg.serialize(term: "IncentiveTypeRebateOrSubsidy")

        case .incentiveTypeTaxCredit:
            SchemaOrg.serialize(term: "IncentiveTypeTaxCredit")

        case .incentiveTypeTaxDeduction:
            SchemaOrg.serialize(term: "IncentiveTypeTaxDeduction")

        case .incentiveTypeTaxWaiver:
            SchemaOrg.serialize(term: "IncentiveTypeTaxWaiver")

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
