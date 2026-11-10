extension SchemaOrg {

    public enum MedicalSpecialty: SchemaOrg.Value, Swift.Hashable {

        case anesthesia

        case audiology

        case cardiovascular

        case communityHealth

        case dentistry

        case dermatologic

        case dermatology

        case dietNutrition

        case emergency

        case endocrine

        case gastroenterologic

        case genetic

        case geriatric

        case gynecologic

        case hematologic

        case infectious

        case laboratoryScience

        case midwifery

        case musculoskeletal

        case neurologic

        case nursing

        case obstetric

        case oncologic

        case ophthalmology

        case optometric

        case otolaryngologic

        case pathology

        case pediatric

        case pharmacySpecialty

        case physiotherapy

        case plasticSurgery

        case podiatric

        case primaryCare

        case psychiatric

        case publicHealth

        case pulmonary

        case radiography

        case renal

        case respiratoryTherapy

        case rheumatologic

        case speechPathology

        case surgical

        case toxicologic

        case urologic

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalSpecialty {

    public var term: Swift.String? {
        switch self {
        case .anesthesia:
            "Anesthesia"

        case .audiology:
            "Audiology"

        case .cardiovascular:
            "Cardiovascular"

        case .communityHealth:
            "CommunityHealth"

        case .dentistry:
            "Dentistry"

        case .dermatologic:
            "Dermatologic"

        case .dermatology:
            "Dermatology"

        case .dietNutrition:
            "DietNutrition"

        case .emergency:
            "Emergency"

        case .endocrine:
            "Endocrine"

        case .gastroenterologic:
            "Gastroenterologic"

        case .genetic:
            "Genetic"

        case .geriatric:
            "Geriatric"

        case .gynecologic:
            "Gynecologic"

        case .hematologic:
            "Hematologic"

        case .infectious:
            "Infectious"

        case .laboratoryScience:
            "LaboratoryScience"

        case .midwifery:
            "Midwifery"

        case .musculoskeletal:
            "Musculoskeletal"

        case .neurologic:
            "Neurologic"

        case .nursing:
            "Nursing"

        case .obstetric:
            "Obstetric"

        case .oncologic:
            "Oncologic"

        case .ophthalmology:
            "Ophthalmology"

        case .optometric:
            "Optometric"

        case .otolaryngologic:
            "Otolaryngologic"

        case .pathology:
            "Pathology"

        case .pediatric:
            "Pediatric"

        case .pharmacySpecialty:
            "PharmacySpecialty"

        case .physiotherapy:
            "Physiotherapy"

        case .plasticSurgery:
            "PlasticSurgery"

        case .podiatric:
            "Podiatric"

        case .primaryCare:
            "PrimaryCare"

        case .psychiatric:
            "Psychiatric"

        case .publicHealth:
            "PublicHealth"

        case .pulmonary:
            "Pulmonary"

        case .radiography:
            "Radiography"

        case .renal:
            "Renal"

        case .respiratoryTherapy:
            "RespiratoryTherapy"

        case .rheumatologic:
            "Rheumatologic"

        case .speechPathology:
            "SpeechPathology"

        case .surgical:
            "Surgical"

        case .toxicologic:
            "Toxicologic"

        case .urologic:
            "Urologic"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Anesthesia":
            self = .anesthesia
            return

        case "Audiology":
            self = .audiology
            return

        case "Cardiovascular":
            self = .cardiovascular
            return

        case "CommunityHealth":
            self = .communityHealth
            return

        case "Dentistry":
            self = .dentistry
            return

        case "Dermatologic":
            self = .dermatologic
            return

        case "Dermatology":
            self = .dermatology
            return

        case "DietNutrition":
            self = .dietNutrition
            return

        case "Emergency":
            self = .emergency
            return

        case "Endocrine":
            self = .endocrine
            return

        case "Gastroenterologic":
            self = .gastroenterologic
            return

        case "Genetic":
            self = .genetic
            return

        case "Geriatric":
            self = .geriatric
            return

        case "Gynecologic":
            self = .gynecologic
            return

        case "Hematologic":
            self = .hematologic
            return

        case "Infectious":
            self = .infectious
            return

        case "LaboratoryScience":
            self = .laboratoryScience
            return

        case "Midwifery":
            self = .midwifery
            return

        case "Musculoskeletal":
            self = .musculoskeletal
            return

        case "Neurologic":
            self = .neurologic
            return

        case "Nursing":
            self = .nursing
            return

        case "Obstetric":
            self = .obstetric
            return

        case "Oncologic":
            self = .oncologic
            return

        case "Ophthalmology":
            self = .ophthalmology
            return

        case "Optometric":
            self = .optometric
            return

        case "Otolaryngologic":
            self = .otolaryngologic
            return

        case "Pathology":
            self = .pathology
            return

        case "Pediatric":
            self = .pediatric
            return

        case "PharmacySpecialty":
            self = .pharmacySpecialty
            return

        case "Physiotherapy":
            self = .physiotherapy
            return

        case "PlasticSurgery":
            self = .plasticSurgery
            return

        case "Podiatric":
            self = .podiatric
            return

        case "PrimaryCare":
            self = .primaryCare
            return

        case "Psychiatric":
            self = .psychiatric
            return

        case "PublicHealth":
            self = .publicHealth
            return

        case "Pulmonary":
            self = .pulmonary
            return

        case "Radiography":
            self = .radiography
            return

        case "Renal":
            self = .renal
            return

        case "RespiratoryTherapy":
            self = .respiratoryTherapy
            return

        case "Rheumatologic":
            self = .rheumatologic
            return

        case "SpeechPathology":
            self = .speechPathology
            return

        case "Surgical":
            self = .surgical
            return

        case "Toxicologic":
            self = .toxicologic
            return

        case "Urologic":
            self = .urologic
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .anesthesia:
            SchemaOrg.serialize(term: "Anesthesia")

        case .audiology:
            SchemaOrg.serialize(term: "Audiology")

        case .cardiovascular:
            SchemaOrg.serialize(term: "Cardiovascular")

        case .communityHealth:
            SchemaOrg.serialize(term: "CommunityHealth")

        case .dentistry:
            SchemaOrg.serialize(term: "Dentistry")

        case .dermatologic:
            SchemaOrg.serialize(term: "Dermatologic")

        case .dermatology:
            SchemaOrg.serialize(term: "Dermatology")

        case .dietNutrition:
            SchemaOrg.serialize(term: "DietNutrition")

        case .emergency:
            SchemaOrg.serialize(term: "Emergency")

        case .endocrine:
            SchemaOrg.serialize(term: "Endocrine")

        case .gastroenterologic:
            SchemaOrg.serialize(term: "Gastroenterologic")

        case .genetic:
            SchemaOrg.serialize(term: "Genetic")

        case .geriatric:
            SchemaOrg.serialize(term: "Geriatric")

        case .gynecologic:
            SchemaOrg.serialize(term: "Gynecologic")

        case .hematologic:
            SchemaOrg.serialize(term: "Hematologic")

        case .infectious:
            SchemaOrg.serialize(term: "Infectious")

        case .laboratoryScience:
            SchemaOrg.serialize(term: "LaboratoryScience")

        case .midwifery:
            SchemaOrg.serialize(term: "Midwifery")

        case .musculoskeletal:
            SchemaOrg.serialize(term: "Musculoskeletal")

        case .neurologic:
            SchemaOrg.serialize(term: "Neurologic")

        case .nursing:
            SchemaOrg.serialize(term: "Nursing")

        case .obstetric:
            SchemaOrg.serialize(term: "Obstetric")

        case .oncologic:
            SchemaOrg.serialize(term: "Oncologic")

        case .ophthalmology:
            SchemaOrg.serialize(term: "Ophthalmology")

        case .optometric:
            SchemaOrg.serialize(term: "Optometric")

        case .otolaryngologic:
            SchemaOrg.serialize(term: "Otolaryngologic")

        case .pathology:
            SchemaOrg.serialize(term: "Pathology")

        case .pediatric:
            SchemaOrg.serialize(term: "Pediatric")

        case .pharmacySpecialty:
            SchemaOrg.serialize(term: "PharmacySpecialty")

        case .physiotherapy:
            SchemaOrg.serialize(term: "Physiotherapy")

        case .plasticSurgery:
            SchemaOrg.serialize(term: "PlasticSurgery")

        case .podiatric:
            SchemaOrg.serialize(term: "Podiatric")

        case .primaryCare:
            SchemaOrg.serialize(term: "PrimaryCare")

        case .psychiatric:
            SchemaOrg.serialize(term: "Psychiatric")

        case .publicHealth:
            SchemaOrg.serialize(term: "PublicHealth")

        case .pulmonary:
            SchemaOrg.serialize(term: "Pulmonary")

        case .radiography:
            SchemaOrg.serialize(term: "Radiography")

        case .renal:
            SchemaOrg.serialize(term: "Renal")

        case .respiratoryTherapy:
            SchemaOrg.serialize(term: "RespiratoryTherapy")

        case .rheumatologic:
            SchemaOrg.serialize(term: "Rheumatologic")

        case .speechPathology:
            SchemaOrg.serialize(term: "SpeechPathology")

        case .surgical:
            SchemaOrg.serialize(term: "Surgical")

        case .toxicologic:
            SchemaOrg.serialize(term: "Toxicologic")

        case .urologic:
            SchemaOrg.serialize(term: "Urologic")

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
