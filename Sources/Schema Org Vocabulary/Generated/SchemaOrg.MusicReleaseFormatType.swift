extension SchemaOrg {

    public enum MusicReleaseFormatType: SchemaOrg.Value, Swift.Hashable {

        case cdFormat

        case cassetteFormat

        case dvdFormat

        case digitalAudioTapeFormat

        case digitalFormat

        case laserDiscFormat

        case vinylFormat

        case instance(Instance)
    }
}

extension SchemaOrg.MusicReleaseFormatType {

    public var term: Swift.String? {
        switch self {
        case .cdFormat:
            "CDFormat"

        case .cassetteFormat:
            "CassetteFormat"

        case .dvdFormat:
            "DVDFormat"

        case .digitalAudioTapeFormat:
            "DigitalAudioTapeFormat"

        case .digitalFormat:
            "DigitalFormat"

        case .laserDiscFormat:
            "LaserDiscFormat"

        case .vinylFormat:
            "VinylFormat"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CDFormat":
            self = .cdFormat
            return

        case "CassetteFormat":
            self = .cassetteFormat
            return

        case "DVDFormat":
            self = .dvdFormat
            return

        case "DigitalAudioTapeFormat":
            self = .digitalAudioTapeFormat
            return

        case "DigitalFormat":
            self = .digitalFormat
            return

        case "LaserDiscFormat":
            self = .laserDiscFormat
            return

        case "VinylFormat":
            self = .vinylFormat
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .cdFormat:
            SchemaOrg.serialize(term: "CDFormat")

        case .cassetteFormat:
            SchemaOrg.serialize(term: "CassetteFormat")

        case .dvdFormat:
            SchemaOrg.serialize(term: "DVDFormat")

        case .digitalAudioTapeFormat:
            SchemaOrg.serialize(term: "DigitalAudioTapeFormat")

        case .digitalFormat:
            SchemaOrg.serialize(term: "DigitalFormat")

        case .laserDiscFormat:
            SchemaOrg.serialize(term: "LaserDiscFormat")

        case .vinylFormat:
            SchemaOrg.serialize(term: "VinylFormat")

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
