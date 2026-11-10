extension Schema_Org {

    public struct Class: Sendable {

        public let term: String

        public let parents: [Schema_Org.Class]

        public init(_ term: String, parents: [Schema_Org.Class] = []) {
            self.term = term
            self.parents = parents
        }
    }
}

extension Schema_Org.Class: Hashable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.term == rhs.term
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(term)
    }
}

extension Schema_Org.Class {

    public var iri: String {
        Schema_Org.namespace + term
    }

    public func isSubclass(of ancestor: Schema_Org.Class) -> Bool {
        self == ancestor || parents.contains { $0.isSubclass(of: ancestor) }
    }

    public static func named(_ term: String) -> Schema_Org.Class {
        index[term] ?? Schema_Org.Class(term)
    }

    static let index: [String: Schema_Org.Class] = Dictionary(uniqueKeysWithValues: all.map { ($0.term, $0) })
}
