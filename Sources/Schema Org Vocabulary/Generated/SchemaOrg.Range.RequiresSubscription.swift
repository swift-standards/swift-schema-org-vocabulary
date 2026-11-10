extension SchemaOrg.Range {

    public enum RequiresSubscription: SchemaOrg.Value, Swift.Hashable {

        case boolean(Swift.Bool)

        case mediaSubscription(SchemaOrg.MediaSubscription)
    }
}

extension SchemaOrg.Range.RequiresSubscription {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .boolean(let value):
            Swift.Bool.serialize(value)

        case .mediaSubscription(let value):
            SchemaOrg.MediaSubscription.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MediaSubscription.deserialize(value) {
            return .mediaSubscription(value)
        }
        if let value = Swift.Bool.deserialize(value) {
            return .boolean(value)
        }
        return nil
    }
}
