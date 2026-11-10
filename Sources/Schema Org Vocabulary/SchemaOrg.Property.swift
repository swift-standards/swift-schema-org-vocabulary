extension SchemaOrg {

    public struct Property: Sendable {

        public let term: String

        public let domains: [SchemaOrg.Class]

        public let ranges: [SchemaOrg.Class]

        public init(_ term: String, domains: [SchemaOrg.Class] = [], ranges: [SchemaOrg.Class] = []) {
            self.term = term
            self.domains = domains
            self.ranges = ranges
        }
    }
}

extension SchemaOrg.Property: Hashable {

    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.term == rhs.term
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(term)
    }
}

extension SchemaOrg.Property {

    public static func named(_ term: String) -> SchemaOrg.Property {
        index[term] ?? SchemaOrg.Property(term)
    }

    static let index: [String: SchemaOrg.Property] = Dictionary(uniqueKeysWithValues: all.map { ($0.term, $0) })
}
