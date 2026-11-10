extension SchemaOrg {

    public struct Class: Sendable {

        public let term: String

        public let parents: [SchemaOrg.Class]

        public init(_ term: String, parents: [SchemaOrg.Class] = []) {
            self.term = term
            self.parents = parents
        }
    }
}

extension SchemaOrg.Class: Hashable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.term == rhs.term
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(term)
    }
}

extension SchemaOrg.Class {

    public var iri: String {
        SchemaOrg.namespace + term
    }

    public func isSubclass(of ancestor: SchemaOrg.Class) -> Bool {
        self == ancestor || parents.contains { $0.isSubclass(of: ancestor) }
    }

    public static func named(_ term: String) -> SchemaOrg.Class {
        index[term] ?? SchemaOrg.Class(term)
    }

    static let index: [String: SchemaOrg.Class] = Dictionary(uniqueKeysWithValues: all.map { ($0.term, $0) })
}
