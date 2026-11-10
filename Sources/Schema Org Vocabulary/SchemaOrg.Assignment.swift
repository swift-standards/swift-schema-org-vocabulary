extension SchemaOrg {

    public struct Assignment: Sendable, Hashable {

        public var property: SchemaOrg.Property

        public var values: [SchemaOrg.Value]

        public init(_ property: SchemaOrg.Property, _ values: [SchemaOrg.Value]) {
            self.property = property
            self.values = values
        }
    }
}
