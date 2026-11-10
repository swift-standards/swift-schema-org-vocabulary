public enum Schema_Org {}

public typealias SchemaOrg = Schema_Org

extension Schema_Org {

    public static let version = "30.1"

    public static let context = W3C_JSON_LD.Context.iri("https://schema.org")

    public static let namespace = "https://schema.org/"

    static let namespaces = ["https://schema.org/", "http://schema.org/", "schema:"]
}

extension Schema_Org {

    static func term(ofIRI iri: String) -> String {
        namespaces.first(where: iri.hasPrefix).map { String(iri.dropFirst($0.count)) } ?? iri
    }

    static func term(of value: W3C_JSON_LD.Value) -> String? {
        switch value {
        case .literal(let literal):
            literal.string.map(term(ofIRI:))

        case .node(let node):
            node.types.isEmpty && node.properties.isEmpty ? node.id.map(term(ofIRI:)) : nil

        case .list:
            nil
        }
    }
}
