extension SchemaOrg {

    public struct Finding: Sendable, Hashable {

        public var property: SchemaOrg.Property

        public var kind: SchemaOrg.Finding.Kind

        public init(property: SchemaOrg.Property, kind: SchemaOrg.Finding.Kind) {
            self.property = property
            self.kind = kind
        }
    }
}
