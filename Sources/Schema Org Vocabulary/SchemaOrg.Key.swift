extension SchemaOrg {

    public struct Key<V: SchemaOrg.Value>: Sendable, Hashable {

        public let name: String

        init(_ name: String) {
            self.name = name
        }
    }
}
