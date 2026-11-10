extension SchemaOrg {

    public enum DrugPregnancyCategory: SchemaOrg.Value, Swift.Hashable {

        case fdAcategoryA

        case fdAcategoryB

        case fdAcategoryC

        case fdAcategoryD

        case fdAcategoryX

        case fdAnotEvaluated

        case instance(Instance)
    }
}

extension SchemaOrg.DrugPregnancyCategory {

    public var term: Swift.String? {
        switch self {
        case .fdAcategoryA:
            "FDAcategoryA"

        case .fdAcategoryB:
            "FDAcategoryB"

        case .fdAcategoryC:
            "FDAcategoryC"

        case .fdAcategoryD:
            "FDAcategoryD"

        case .fdAcategoryX:
            "FDAcategoryX"

        case .fdAnotEvaluated:
            "FDAnotEvaluated"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "FDAcategoryA":
            self = .fdAcategoryA
            return

        case "FDAcategoryB":
            self = .fdAcategoryB
            return

        case "FDAcategoryC":
            self = .fdAcategoryC
            return

        case "FDAcategoryD":
            self = .fdAcategoryD
            return

        case "FDAcategoryX":
            self = .fdAcategoryX
            return

        case "FDAnotEvaluated":
            self = .fdAnotEvaluated
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .fdAcategoryA:
            SchemaOrg.serialize(term: "FDAcategoryA")

        case .fdAcategoryB:
            SchemaOrg.serialize(term: "FDAcategoryB")

        case .fdAcategoryC:
            SchemaOrg.serialize(term: "FDAcategoryC")

        case .fdAcategoryD:
            SchemaOrg.serialize(term: "FDAcategoryD")

        case .fdAcategoryX:
            SchemaOrg.serialize(term: "FDAcategoryX")

        case .fdAnotEvaluated:
            SchemaOrg.serialize(term: "FDAnotEvaluated")

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
