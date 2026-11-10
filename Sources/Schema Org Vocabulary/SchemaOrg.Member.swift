extension SchemaOrg {

    public struct Member: Sendable {

        public let term: String

        public let classes: [SchemaOrg.Class]

        public init(_ term: String, classes: [SchemaOrg.Class] = []) {
            self.term = term
            self.classes = classes
        }
    }
}

extension SchemaOrg.Member: Hashable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.term == rhs.term
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(term)
    }
}

extension SchemaOrg.Member {

    public var iri: String {
        SchemaOrg.namespace + term
    }

    public static func named(_ term: String) -> SchemaOrg.Member? {
        index[term]
    }

    static let index: [String: SchemaOrg.Member] = Dictionary(uniqueKeysWithValues: all.map { ($0.term, $0) })
}
