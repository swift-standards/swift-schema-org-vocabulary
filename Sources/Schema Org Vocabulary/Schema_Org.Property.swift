extension Schema_Org {

    public struct Property: Sendable {

        public let term: String

        public let domains: [Schema_Org.Class]

        public let ranges: [Schema_Org.Class]

        public init(_ term: String, domains: [Schema_Org.Class] = [], ranges: [Schema_Org.Class] = []) {
            self.term = term
            self.domains = domains
            self.ranges = ranges
        }
    }
}

extension Schema_Org.Property: Hashable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.term == rhs.term
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(term)
    }
}

extension Schema_Org.Property {

    public static func named(_ term: String) -> Schema_Org.Property {
        index[term] ?? Schema_Org.Property(term)
    }

    static let index: [String: Schema_Org.Property] = Dictionary(uniqueKeysWithValues: all.map { ($0.term, $0) })
}
