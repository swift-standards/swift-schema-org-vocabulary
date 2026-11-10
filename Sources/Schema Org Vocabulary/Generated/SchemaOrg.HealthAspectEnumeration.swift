extension SchemaOrg {

    public enum HealthAspectEnumeration: SchemaOrg.Value, Swift.Hashable {

        case allergiesHealthAspect

        case benefitsHealthAspect

        case causesHealthAspect

        case contagiousnessHealthAspect

        case effectivenessHealthAspect

        case gettingAccessHealthAspect

        case howItWorksHealthAspect

        case howOrWhereHealthAspect

        case ingredientsHealthAspect

        case livingWithHealthAspect

        case mayTreatHealthAspect

        case misconceptionsHealthAspect

        case overviewHealthAspect

        case patientExperienceHealthAspect

        case pregnancyHealthAspect

        case preventionHealthAspect

        case prognosisHealthAspect

        case relatedTopicsHealthAspect

        case risksOrComplicationsHealthAspect

        case safetyHealthAspect

        case screeningHealthAspect

        case seeDoctorHealthAspect

        case selfCareHealthAspect

        case sideEffectsHealthAspect

        case stagesHealthAspect

        case symptomsHealthAspect

        case treatmentsHealthAspect

        case typesHealthAspect

        case usageOrScheduleHealthAspect

        case instance(Instance)
    }
}

extension SchemaOrg.HealthAspectEnumeration {

    public var term: Swift.String? {
        switch self {
        case .allergiesHealthAspect:
            "AllergiesHealthAspect"

        case .benefitsHealthAspect:
            "BenefitsHealthAspect"

        case .causesHealthAspect:
            "CausesHealthAspect"

        case .contagiousnessHealthAspect:
            "ContagiousnessHealthAspect"

        case .effectivenessHealthAspect:
            "EffectivenessHealthAspect"

        case .gettingAccessHealthAspect:
            "GettingAccessHealthAspect"

        case .howItWorksHealthAspect:
            "HowItWorksHealthAspect"

        case .howOrWhereHealthAspect:
            "HowOrWhereHealthAspect"

        case .ingredientsHealthAspect:
            "IngredientsHealthAspect"

        case .livingWithHealthAspect:
            "LivingWithHealthAspect"

        case .mayTreatHealthAspect:
            "MayTreatHealthAspect"

        case .misconceptionsHealthAspect:
            "MisconceptionsHealthAspect"

        case .overviewHealthAspect:
            "OverviewHealthAspect"

        case .patientExperienceHealthAspect:
            "PatientExperienceHealthAspect"

        case .pregnancyHealthAspect:
            "PregnancyHealthAspect"

        case .preventionHealthAspect:
            "PreventionHealthAspect"

        case .prognosisHealthAspect:
            "PrognosisHealthAspect"

        case .relatedTopicsHealthAspect:
            "RelatedTopicsHealthAspect"

        case .risksOrComplicationsHealthAspect:
            "RisksOrComplicationsHealthAspect"

        case .safetyHealthAspect:
            "SafetyHealthAspect"

        case .screeningHealthAspect:
            "ScreeningHealthAspect"

        case .seeDoctorHealthAspect:
            "SeeDoctorHealthAspect"

        case .selfCareHealthAspect:
            "SelfCareHealthAspect"

        case .sideEffectsHealthAspect:
            "SideEffectsHealthAspect"

        case .stagesHealthAspect:
            "StagesHealthAspect"

        case .symptomsHealthAspect:
            "SymptomsHealthAspect"

        case .treatmentsHealthAspect:
            "TreatmentsHealthAspect"

        case .typesHealthAspect:
            "TypesHealthAspect"

        case .usageOrScheduleHealthAspect:
            "UsageOrScheduleHealthAspect"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AllergiesHealthAspect":
            self = .allergiesHealthAspect
            return

        case "BenefitsHealthAspect":
            self = .benefitsHealthAspect
            return

        case "CausesHealthAspect":
            self = .causesHealthAspect
            return

        case "ContagiousnessHealthAspect":
            self = .contagiousnessHealthAspect
            return

        case "EffectivenessHealthAspect":
            self = .effectivenessHealthAspect
            return

        case "GettingAccessHealthAspect":
            self = .gettingAccessHealthAspect
            return

        case "HowItWorksHealthAspect":
            self = .howItWorksHealthAspect
            return

        case "HowOrWhereHealthAspect":
            self = .howOrWhereHealthAspect
            return

        case "IngredientsHealthAspect":
            self = .ingredientsHealthAspect
            return

        case "LivingWithHealthAspect":
            self = .livingWithHealthAspect
            return

        case "MayTreatHealthAspect":
            self = .mayTreatHealthAspect
            return

        case "MisconceptionsHealthAspect":
            self = .misconceptionsHealthAspect
            return

        case "OverviewHealthAspect":
            self = .overviewHealthAspect
            return

        case "PatientExperienceHealthAspect":
            self = .patientExperienceHealthAspect
            return

        case "PregnancyHealthAspect":
            self = .pregnancyHealthAspect
            return

        case "PreventionHealthAspect":
            self = .preventionHealthAspect
            return

        case "PrognosisHealthAspect":
            self = .prognosisHealthAspect
            return

        case "RelatedTopicsHealthAspect":
            self = .relatedTopicsHealthAspect
            return

        case "RisksOrComplicationsHealthAspect":
            self = .risksOrComplicationsHealthAspect
            return

        case "SafetyHealthAspect":
            self = .safetyHealthAspect
            return

        case "ScreeningHealthAspect":
            self = .screeningHealthAspect
            return

        case "SeeDoctorHealthAspect":
            self = .seeDoctorHealthAspect
            return

        case "SelfCareHealthAspect":
            self = .selfCareHealthAspect
            return

        case "SideEffectsHealthAspect":
            self = .sideEffectsHealthAspect
            return

        case "StagesHealthAspect":
            self = .stagesHealthAspect
            return

        case "SymptomsHealthAspect":
            self = .symptomsHealthAspect
            return

        case "TreatmentsHealthAspect":
            self = .treatmentsHealthAspect
            return

        case "TypesHealthAspect":
            self = .typesHealthAspect
            return

        case "UsageOrScheduleHealthAspect":
            self = .usageOrScheduleHealthAspect
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .allergiesHealthAspect:
            SchemaOrg.serialize(term: "AllergiesHealthAspect")

        case .benefitsHealthAspect:
            SchemaOrg.serialize(term: "BenefitsHealthAspect")

        case .causesHealthAspect:
            SchemaOrg.serialize(term: "CausesHealthAspect")

        case .contagiousnessHealthAspect:
            SchemaOrg.serialize(term: "ContagiousnessHealthAspect")

        case .effectivenessHealthAspect:
            SchemaOrg.serialize(term: "EffectivenessHealthAspect")

        case .gettingAccessHealthAspect:
            SchemaOrg.serialize(term: "GettingAccessHealthAspect")

        case .howItWorksHealthAspect:
            SchemaOrg.serialize(term: "HowItWorksHealthAspect")

        case .howOrWhereHealthAspect:
            SchemaOrg.serialize(term: "HowOrWhereHealthAspect")

        case .ingredientsHealthAspect:
            SchemaOrg.serialize(term: "IngredientsHealthAspect")

        case .livingWithHealthAspect:
            SchemaOrg.serialize(term: "LivingWithHealthAspect")

        case .mayTreatHealthAspect:
            SchemaOrg.serialize(term: "MayTreatHealthAspect")

        case .misconceptionsHealthAspect:
            SchemaOrg.serialize(term: "MisconceptionsHealthAspect")

        case .overviewHealthAspect:
            SchemaOrg.serialize(term: "OverviewHealthAspect")

        case .patientExperienceHealthAspect:
            SchemaOrg.serialize(term: "PatientExperienceHealthAspect")

        case .pregnancyHealthAspect:
            SchemaOrg.serialize(term: "PregnancyHealthAspect")

        case .preventionHealthAspect:
            SchemaOrg.serialize(term: "PreventionHealthAspect")

        case .prognosisHealthAspect:
            SchemaOrg.serialize(term: "PrognosisHealthAspect")

        case .relatedTopicsHealthAspect:
            SchemaOrg.serialize(term: "RelatedTopicsHealthAspect")

        case .risksOrComplicationsHealthAspect:
            SchemaOrg.serialize(term: "RisksOrComplicationsHealthAspect")

        case .safetyHealthAspect:
            SchemaOrg.serialize(term: "SafetyHealthAspect")

        case .screeningHealthAspect:
            SchemaOrg.serialize(term: "ScreeningHealthAspect")

        case .seeDoctorHealthAspect:
            SchemaOrg.serialize(term: "SeeDoctorHealthAspect")

        case .selfCareHealthAspect:
            SchemaOrg.serialize(term: "SelfCareHealthAspect")

        case .sideEffectsHealthAspect:
            SchemaOrg.serialize(term: "SideEffectsHealthAspect")

        case .stagesHealthAspect:
            SchemaOrg.serialize(term: "StagesHealthAspect")

        case .symptomsHealthAspect:
            SchemaOrg.serialize(term: "SymptomsHealthAspect")

        case .treatmentsHealthAspect:
            SchemaOrg.serialize(term: "TreatmentsHealthAspect")

        case .typesHealthAspect:
            SchemaOrg.serialize(term: "TypesHealthAspect")

        case .usageOrScheduleHealthAspect:
            SchemaOrg.serialize(term: "UsageOrScheduleHealthAspect")

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
