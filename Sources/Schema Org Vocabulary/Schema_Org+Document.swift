extension Schema_Org {

    public static let loader = W3C_JSON_LD.Context.Loader { iri in
        let known = [
            "https://schema.org", "https://schema.org/", "http://schema.org", "http://schema.org/",
            "https://schema.org/docs/jsonldcontext.jsonld", "http://schema.org/docs/jsonldcontext.jsonld",
            "https://schema.org/docs/jsonldcontext.json", "http://schema.org/docs/jsonldcontext.json",
        ]
        guard known.contains(iri) else { return nil }
        return .definition(
            W3C_JSON_LD.Context.Definition(
                vocabulary: "http://schema.org/",
                terms: [
                    W3C_JSON_LD.Context.Term("id", id: "@id"),
                    W3C_JSON_LD.Context.Term("type", id: "@type"),
                    W3C_JSON_LD.Context.Term("schema", id: "http://schema.org/"),
                ]
            )
        )
    }

    public static func nodes(
        in document: W3C_JSON_LD.Document,
        loader: W3C_JSON_LD.Context.Loader = Schema_Org.loader
    ) throws(W3C_JSON_LD.Error) -> [W3C_JSON_LD.Node] {
        var active = W3C_JSON_LD.Context.Active()
        active.vocabulary = namespace
        let expanded = try document.expanded(loader: loader)
        return expanded.nodes.map { normalized($0).compacted(to: active) }
    }

    static func normalized(_ node: W3C_JSON_LD.Node) -> W3C_JSON_LD.Node {
        var result = node
        result.types = node.types.map(normalized(iri:))
        result.properties = node.properties.map { property in
            W3C_JSON_LD.Node.Property(normalized(iri: property.key), property.values.map(normalized(value:)))
        }
        return result
    }

    static func normalized(value: W3C_JSON_LD.Value) -> W3C_JSON_LD.Value {
        switch value {
        case .node(let node):
            return .node(normalized(node))

        case .list(let values):
            return .list(values.map(normalized(value:)))

        case .literal:
            return value
        }
    }

    static func normalized(iri: String) -> String {
        let insecure = "http://schema.org/"
        guard iri.hasPrefix(insecure) else { return iri }
        return namespace + iri.dropFirst(insecure.count)
    }
}
