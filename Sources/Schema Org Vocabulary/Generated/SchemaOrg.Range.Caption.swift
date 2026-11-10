extension SchemaOrg.Range {

    public enum Caption: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case mediaObject(SchemaOrg.MediaObject)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Caption {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .mediaObject(let value):
            SchemaOrg.MediaObject.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MediaObject.deserialize(value) {
            return .mediaObject(value)
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
