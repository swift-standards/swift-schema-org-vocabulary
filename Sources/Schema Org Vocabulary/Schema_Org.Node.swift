extension Schema_Org {

    public struct Node: Sendable, Hashable {

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension Schema_Org.Node {

    public init(_ type: Schema_Org.Class, id: String? = nil, _ assignments: [Schema_Org.Assignment] = []) {
        self.init(node: W3C_JSON_LD.Node(id: id, types: [type.term]))
        for assignment in assignments {
            self[assignment.property] += assignment.values
        }
    }

    public var id: String? {
        get { node.id }
        set { node.id = newValue }
    }

    public var classes: [Schema_Org.Class] {
        node.types.map { Schema_Org.Class.named(Schema_Org.term(ofIRI: $0)) }
    }

    public func isInstance(of type: Schema_Org.Class) -> Bool {
        classes.contains { $0.isSubclass(of: type) }
    }

    public subscript(property: Schema_Org.Property) -> [Schema_Org.Value] {
        get { node[property.term].map(Schema_Org.Value.init) }
        set { node[property.term] = newValue.map(\.value) }
    }
}

extension Schema_Org.Node: W3C_JSON_LD.Representable {

    public static var context: W3C_JSON_LD.Context {
        Schema_Org.context
    }
}

extension Schema_Org.Node {

    public static func instances(
        of type: Schema_Org.Class,
        in document: W3C_JSON_LD.Document,
        loader: W3C_JSON_LD.Context.Loader = Schema_Org.loader
    ) throws(W3C_JSON_LD.Error) -> [Schema_Org.Node] {
        try Schema_Org.nodes(in: document, loader: loader).map(Schema_Org.Node.init(node:)).filter { $0.isInstance(of: type) }
    }
}
