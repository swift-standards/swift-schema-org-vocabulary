extension SchemaOrg {

    public enum BookFormatType: SchemaOrg.Value, Swift.Hashable {

        case audiobookFormat

        case eBook

        case graphicNovel

        case hardcover

        case pamphlet

        case paperback

        case instance(Instance)
    }
}

extension SchemaOrg.BookFormatType {

    public var term: Swift.String? {
        switch self {
        case .audiobookFormat:
            "AudiobookFormat"

        case .eBook:
            "EBook"

        case .graphicNovel:
            "GraphicNovel"

        case .hardcover:
            "Hardcover"

        case .pamphlet:
            "Pamphlet"

        case .paperback:
            "Paperback"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AudiobookFormat":
            self = .audiobookFormat
            return

        case "EBook":
            self = .eBook
            return

        case "GraphicNovel":
            self = .graphicNovel
            return

        case "Hardcover":
            self = .hardcover
            return

        case "Pamphlet":
            self = .pamphlet
            return

        case "Paperback":
            self = .paperback
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .audiobookFormat:
            SchemaOrg.serialize(term: "AudiobookFormat")

        case .eBook:
            SchemaOrg.serialize(term: "EBook")

        case .graphicNovel:
            SchemaOrg.serialize(term: "GraphicNovel")

        case .hardcover:
            SchemaOrg.serialize(term: "Hardcover")

        case .pamphlet:
            SchemaOrg.serialize(term: "Pamphlet")

        case .paperback:
            SchemaOrg.serialize(term: "Paperback")

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
