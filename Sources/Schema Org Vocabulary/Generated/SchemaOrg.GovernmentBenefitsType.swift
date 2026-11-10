extension SchemaOrg {

    public enum GovernmentBenefitsType: SchemaOrg.Value, Swift.Hashable {

        case basicIncome

        case businessSupport

        case disabilitySupport

        case healthCare

        case oneTimePayments

        case paidLeave

        case parentalSupport

        case unemploymentSupport

        case instance(Instance)
    }
}

extension SchemaOrg.GovernmentBenefitsType {

    public var term: Swift.String? {
        switch self {
        case .basicIncome:
            "BasicIncome"

        case .businessSupport:
            "BusinessSupport"

        case .disabilitySupport:
            "DisabilitySupport"

        case .healthCare:
            "HealthCare"

        case .oneTimePayments:
            "OneTimePayments"

        case .paidLeave:
            "PaidLeave"

        case .parentalSupport:
            "ParentalSupport"

        case .unemploymentSupport:
            "UnemploymentSupport"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "BasicIncome":
            self = .basicIncome
            return

        case "BusinessSupport":
            self = .businessSupport
            return

        case "DisabilitySupport":
            self = .disabilitySupport
            return

        case "HealthCare":
            self = .healthCare
            return

        case "OneTimePayments":
            self = .oneTimePayments
            return

        case "PaidLeave":
            self = .paidLeave
            return

        case "ParentalSupport":
            self = .parentalSupport
            return

        case "UnemploymentSupport":
            self = .unemploymentSupport
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .basicIncome:
            SchemaOrg.serialize(term: "BasicIncome")

        case .businessSupport:
            SchemaOrg.serialize(term: "BusinessSupport")

        case .disabilitySupport:
            SchemaOrg.serialize(term: "DisabilitySupport")

        case .healthCare:
            SchemaOrg.serialize(term: "HealthCare")

        case .oneTimePayments:
            SchemaOrg.serialize(term: "OneTimePayments")

        case .paidLeave:
            SchemaOrg.serialize(term: "PaidLeave")

        case .parentalSupport:
            SchemaOrg.serialize(term: "ParentalSupport")

        case .unemploymentSupport:
            SchemaOrg.serialize(term: "UnemploymentSupport")

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
