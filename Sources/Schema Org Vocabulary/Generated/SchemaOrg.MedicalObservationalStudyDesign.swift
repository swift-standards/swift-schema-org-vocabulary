extension SchemaOrg {

    public enum MedicalObservationalStudyDesign: SchemaOrg.Value, Swift.Hashable {

        case caseSeries

        case cohortStudy

        case crossSectional

        case longitudinal

        case observational

        case registry

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalObservationalStudyDesign {

    public var term: Swift.String? {
        switch self {
        case .caseSeries:
            "CaseSeries"

        case .cohortStudy:
            "CohortStudy"

        case .crossSectional:
            "CrossSectional"

        case .longitudinal:
            "Longitudinal"

        case .observational:
            "Observational"

        case .registry:
            "Registry"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CaseSeries":
            self = .caseSeries
            return

        case "CohortStudy":
            self = .cohortStudy
            return

        case "CrossSectional":
            self = .crossSectional
            return

        case "Longitudinal":
            self = .longitudinal
            return

        case "Observational":
            self = .observational
            return

        case "Registry":
            self = .registry
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .caseSeries:
            SchemaOrg.serialize(term: "CaseSeries")

        case .cohortStudy:
            SchemaOrg.serialize(term: "CohortStudy")

        case .crossSectional:
            SchemaOrg.serialize(term: "CrossSectional")

        case .longitudinal:
            SchemaOrg.serialize(term: "Longitudinal")

        case .observational:
            SchemaOrg.serialize(term: "Observational")

        case .registry:
            SchemaOrg.serialize(term: "Registry")

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
