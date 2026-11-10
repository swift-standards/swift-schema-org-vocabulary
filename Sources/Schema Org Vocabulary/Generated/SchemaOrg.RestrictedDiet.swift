extension SchemaOrg {

    public enum RestrictedDiet: SchemaOrg.Value, Swift.Hashable {

        case diabeticDiet

        case glutenFreeDiet

        case halalDiet

        case hinduDiet

        case kosherDiet

        case lowCalorieDiet

        case lowFatDiet

        case lowLactoseDiet

        case lowSaltDiet

        case veganDiet

        case vegetarianDiet

        case instance(Instance)
    }
}

extension SchemaOrg.RestrictedDiet {

    public var term: Swift.String? {
        switch self {
        case .diabeticDiet:
            "DiabeticDiet"

        case .glutenFreeDiet:
            "GlutenFreeDiet"

        case .halalDiet:
            "HalalDiet"

        case .hinduDiet:
            "HinduDiet"

        case .kosherDiet:
            "KosherDiet"

        case .lowCalorieDiet:
            "LowCalorieDiet"

        case .lowFatDiet:
            "LowFatDiet"

        case .lowLactoseDiet:
            "LowLactoseDiet"

        case .lowSaltDiet:
            "LowSaltDiet"

        case .veganDiet:
            "VeganDiet"

        case .vegetarianDiet:
            "VegetarianDiet"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DiabeticDiet":
            self = .diabeticDiet
            return

        case "GlutenFreeDiet":
            self = .glutenFreeDiet
            return

        case "HalalDiet":
            self = .halalDiet
            return

        case "HinduDiet":
            self = .hinduDiet
            return

        case "KosherDiet":
            self = .kosherDiet
            return

        case "LowCalorieDiet":
            self = .lowCalorieDiet
            return

        case "LowFatDiet":
            self = .lowFatDiet
            return

        case "LowLactoseDiet":
            self = .lowLactoseDiet
            return

        case "LowSaltDiet":
            self = .lowSaltDiet
            return

        case "VeganDiet":
            self = .veganDiet
            return

        case "VegetarianDiet":
            self = .vegetarianDiet
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .diabeticDiet:
            SchemaOrg.serialize(term: "DiabeticDiet")

        case .glutenFreeDiet:
            SchemaOrg.serialize(term: "GlutenFreeDiet")

        case .halalDiet:
            SchemaOrg.serialize(term: "HalalDiet")

        case .hinduDiet:
            SchemaOrg.serialize(term: "HinduDiet")

        case .kosherDiet:
            SchemaOrg.serialize(term: "KosherDiet")

        case .lowCalorieDiet:
            SchemaOrg.serialize(term: "LowCalorieDiet")

        case .lowFatDiet:
            SchemaOrg.serialize(term: "LowFatDiet")

        case .lowLactoseDiet:
            SchemaOrg.serialize(term: "LowLactoseDiet")

        case .lowSaltDiet:
            SchemaOrg.serialize(term: "LowSaltDiet")

        case .veganDiet:
            SchemaOrg.serialize(term: "VeganDiet")

        case .vegetarianDiet:
            SchemaOrg.serialize(term: "VegetarianDiet")

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
