extension SchemaOrg {

    public enum MedicalImagingTechnique: SchemaOrg.Value, Swift.Hashable {

        case ct

        case mri

        case pet

        case radiography

        case ultrasound

        case xRay

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalImagingTechnique {

    public var term: Swift.String? {
        switch self {
        case .ct:
            "CT"

        case .mri:
            "MRI"

        case .pet:
            "PET"

        case .radiography:
            "Radiography"

        case .ultrasound:
            "Ultrasound"

        case .xRay:
            "XRay"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CT":
            self = .ct
            return

        case "MRI":
            self = .mri
            return

        case "PET":
            self = .pet
            return

        case "Radiography":
            self = .radiography
            return

        case "Ultrasound":
            self = .ultrasound
            return

        case "XRay":
            self = .xRay
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .ct:
            SchemaOrg.serialize(term: "CT")

        case .mri:
            SchemaOrg.serialize(term: "MRI")

        case .pet:
            SchemaOrg.serialize(term: "PET")

        case .radiography:
            SchemaOrg.serialize(term: "Radiography")

        case .ultrasound:
            SchemaOrg.serialize(term: "Ultrasound")

        case .xRay:
            SchemaOrg.serialize(term: "XRay")

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
