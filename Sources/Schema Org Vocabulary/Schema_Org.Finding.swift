extension Schema_Org {

    public struct Finding: Sendable, Hashable {

        public var property: Schema_Org.Property

        public var kind: Schema_Org.Finding.Kind

        public init(property: Schema_Org.Property, kind: Schema_Org.Finding.Kind) {
            self.property = property
            self.kind = kind
        }
    }
}
