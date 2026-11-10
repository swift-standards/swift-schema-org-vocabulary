extension RFC_3986.URI: SchemaOrg.Value {

    public static func serialize(_ value: RFC_3986.URI) -> W3C_JSON_LD.Value {
        .string(value.value)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> RFC_3986.URI? {
        let text: String?
        switch value {
        case .literal(let literal):
            text = literal.string

        case .node(let node):
            text = node.types.isEmpty && node.properties.isEmpty ? node.id : nil

        case .list:
            text = nil
        }
        guard let text else { return nil }
        do throws(RFC_3986.Error) {
            return try RFC_3986.URI(text)
        } catch {
            return nil
        }
    }
}
