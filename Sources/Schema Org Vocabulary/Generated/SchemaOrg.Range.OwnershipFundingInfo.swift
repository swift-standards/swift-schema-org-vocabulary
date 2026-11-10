extension SchemaOrg.Range {

    public enum OwnershipFundingInfo: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case aboutPage(SchemaOrg.AboutPage)

        case creativeWork(SchemaOrg.CreativeWork)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.OwnershipFundingInfo {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .aboutPage(let value):
            SchemaOrg.AboutPage.serialize(value)

        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.AboutPage.deserialize(value) {
            return .aboutPage(value)
        }
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
        }
        if let value = RFC_3986.URI.deserialize(value) {
            return .url(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
