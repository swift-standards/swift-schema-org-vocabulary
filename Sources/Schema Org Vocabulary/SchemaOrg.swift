public enum SchemaOrg {}

extension SchemaOrg {

    public static let version = "30.1"

    public static let context = W3C_JSON_LD.Context.iri("https://schema.org")

    public static let namespace = "https://schema.org/"

    static let namespaces = ["https://schema.org/", "http://schema.org/", "schema:"]
}

extension SchemaOrg {

    static func term(ofIRI iri: String) -> String {
        for namespace in namespaces where iri.hasPrefix(namespace) {
            return String(iri.dropFirst(namespace.count))
        }
        return iri
    }

    static func term(of value: W3C_JSON_LD.Value) -> String? {
        switch value {
        case .literal(let literal):
            return literal.string.map(term(ofIRI:))

        case .node(let node):
            guard node.types.isEmpty, node.properties.isEmpty, let id = node.id else { return nil }
            return term(ofIRI: id)

        case .list:
            return nil
        }
    }

    static func serialize(term: String) -> W3C_JSON_LD.Value {
        .string(namespace + term)
    }

    static func isTyped(_ value: W3C_JSON_LD.Value) -> Bool {
        guard let node = value.node else { return false }
        return !node.types.isEmpty
    }

    static func isA(_ type: String, _ ancestor: String) -> Bool {
        if type == ancestor { return true }
        return (parents[type] ?? []).contains { isA($0, ancestor) }
    }
}
