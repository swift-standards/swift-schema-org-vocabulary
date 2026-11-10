extension SchemaOrg.Range {

    public enum SoftwareRequirements: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case softwareApplication(SchemaOrg.SoftwareApplication)

        case text(Swift.String)

        case url(RFC_3986.URI)
    }
}

extension SchemaOrg.Range.SoftwareRequirements {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .softwareApplication(let value):
            SchemaOrg.SoftwareApplication.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .url(let value):
            RFC_3986.URI.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.SoftwareApplication.deserialize(value) {
            return .softwareApplication(value)
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
