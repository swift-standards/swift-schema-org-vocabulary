extension SchemaOrg {

    public struct Node: Sendable, Hashable {

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Node {

    public init(_ type: SchemaOrg.Class, id: String? = nil, _ assignments: [SchemaOrg.Assignment] = []) {
        self.init(node: W3C_JSON_LD.Node(id: id, types: [type.term]))
        for assignment in assignments {
            self[assignment.property] += assignment.values
        }
    }

    public var id: String? {
        get { node.id }
        set { node.id = newValue }
    }

    public var classes: [SchemaOrg.Class] {
        node.types.map { SchemaOrg.Class.named(SchemaOrg.term(ofIRI: $0)) }
    }

    public func isInstance(of type: SchemaOrg.Class) -> Bool {
        classes.contains { $0.isSubclass(of: type) }
    }

    public subscript(property: SchemaOrg.Property) -> [SchemaOrg.Value] {
        get { node[property.term].map(SchemaOrg.Value.init) }
        set { node[property.term] = newValue.map(\.value) }
    }
}

extension SchemaOrg.Node: W3C_JSON_LD.Representable {

    public static var context: W3C_JSON_LD.Context {
        SchemaOrg.context
    }
}

extension SchemaOrg.Node {

    public static func instances(
        of type: SchemaOrg.Class,
        in document: W3C_JSON_LD.Document,
        loader: W3C_JSON_LD.Context.Loader = SchemaOrg.loader
    ) throws(W3C_JSON_LD.Error) -> [SchemaOrg.Node] {
        try SchemaOrg.nodes(in: document, loader: loader).map(SchemaOrg.Node.init(node:)).filter { $0.isInstance(of: type) }
    }
}
