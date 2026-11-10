extension SchemaOrg {

    public protocol Resource: SchemaOrg.Value, W3C_JSON_LD.Representable {

        static var type: String { get }

        var node: W3C_JSON_LD.Node { get set }

        init(node: W3C_JSON_LD.Node)
    }
}

extension SchemaOrg.Resource {

    public static var context: W3C_JSON_LD.Context {
        SchemaOrg.context
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        .node(value.node)
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        guard let node = value.node else { return nil }
        let fits = node.types.contains { SchemaOrg.isA(SchemaOrg.term(ofIRI: $0), type) }
        guard node.types.isEmpty || fits else { return nil }
        return Self(node: node)
    }

    public init?(_ node: W3C_JSON_LD.Node) {
        guard let value = Self.deserialize(.node(node)) else { return nil }
        self = value
    }
}

extension SchemaOrg.Resource {

    subscript<V: SchemaOrg.Value>(first key: String) -> V? {
        get {
            node[key].lazy.compactMap(V.deserialize).first
        }
        set {
            node[key] = newValue.map { [V.serialize($0)] } ?? []
        }
    }

    public subscript<V: SchemaOrg.Value>(key: SchemaOrg.Key<V>) -> [V] {
        get {
            node[key.name].compactMap(V.deserialize)
        }
        set {
            node[key.name] = newValue.map(V.serialize)
        }
    }
}

extension SchemaOrg.Resource {

    public static func instances(
        in document: W3C_JSON_LD.Document,
        loader: W3C_JSON_LD.Context.Loader = SchemaOrg.loader
    ) throws(W3C_JSON_LD.Error) -> [Self] {
        try SchemaOrg.nodes(in: document, loader: loader).compactMap { Self.deserialize(.node($0)) }
    }
}
