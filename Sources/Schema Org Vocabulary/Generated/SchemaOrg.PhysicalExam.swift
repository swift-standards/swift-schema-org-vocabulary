extension SchemaOrg {

    public enum PhysicalExam: SchemaOrg.Value, Swift.Hashable {

        case abdomen

        case appearance

        case cardiovascularExam

        case ear

        case eye

        case genitourinary

        case head

        case lung

        case musculoskeletalExam

        case neck

        case neuro

        case nose

        case skin

        case throat

        case instance(Instance)
    }
}

extension SchemaOrg.PhysicalExam {

    public var term: Swift.String? {
        switch self {
        case .abdomen:
            "Abdomen"

        case .appearance:
            "Appearance"

        case .cardiovascularExam:
            "CardiovascularExam"

        case .ear:
            "Ear"

        case .eye:
            "Eye"

        case .genitourinary:
            "Genitourinary"

        case .head:
            "Head"

        case .lung:
            "Lung"

        case .musculoskeletalExam:
            "MusculoskeletalExam"

        case .neck:
            "Neck"

        case .neuro:
            "Neuro"

        case .nose:
            "Nose"

        case .skin:
            "Skin"

        case .throat:
            "Throat"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Abdomen":
            self = .abdomen
            return

        case "Appearance":
            self = .appearance
            return

        case "CardiovascularExam":
            self = .cardiovascularExam
            return

        case "Ear":
            self = .ear
            return

        case "Eye":
            self = .eye
            return

        case "Genitourinary":
            self = .genitourinary
            return

        case "Head":
            self = .head
            return

        case "Lung":
            self = .lung
            return

        case "MusculoskeletalExam":
            self = .musculoskeletalExam
            return

        case "Neck":
            self = .neck
            return

        case "Neuro":
            self = .neuro
            return

        case "Nose":
            self = .nose
            return

        case "Skin":
            self = .skin
            return

        case "Throat":
            self = .throat
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .abdomen:
            SchemaOrg.serialize(term: "Abdomen")

        case .appearance:
            SchemaOrg.serialize(term: "Appearance")

        case .cardiovascularExam:
            SchemaOrg.serialize(term: "CardiovascularExam")

        case .ear:
            SchemaOrg.serialize(term: "Ear")

        case .eye:
            SchemaOrg.serialize(term: "Eye")

        case .genitourinary:
            SchemaOrg.serialize(term: "Genitourinary")

        case .head:
            SchemaOrg.serialize(term: "Head")

        case .lung:
            SchemaOrg.serialize(term: "Lung")

        case .musculoskeletalExam:
            SchemaOrg.serialize(term: "MusculoskeletalExam")

        case .neck:
            SchemaOrg.serialize(term: "Neck")

        case .neuro:
            SchemaOrg.serialize(term: "Neuro")

        case .nose:
            SchemaOrg.serialize(term: "Nose")

        case .skin:
            SchemaOrg.serialize(term: "Skin")

        case .throat:
            SchemaOrg.serialize(term: "Throat")

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
