extension SchemaOrg {

    public protocol Value: Sendable {

        static func serialize(_ value: Self) -> W3C_JSON_LD.Value

        static func deserialize(_ value: W3C_JSON_LD.Value) -> Self?
    }
}
