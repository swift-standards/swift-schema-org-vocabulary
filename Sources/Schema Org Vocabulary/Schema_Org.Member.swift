extension Schema_Org {

    public struct Member: Sendable {

        public let term: String

        public let classes: [Schema_Org.Class]

        public init(_ term: String, classes: [Schema_Org.Class] = []) {
            self.term = term
            self.classes = classes
        }
    }
}

extension Schema_Org.Member: Hashable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.term == rhs.term
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(term)
    }
}

extension Schema_Org.Member {

    public var iri: String {
        Schema_Org.namespace + term
    }

    public static func named(_ term: String) -> Schema_Org.Member? {
        index[term]
    }

    static let index: [String: Schema_Org.Member] = Dictionary(uniqueKeysWithValues: all.map { ($0.term, $0) })
}
