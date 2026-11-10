extension Schema_Org {

    public struct Assignment: Sendable, Hashable {

        public var property: Schema_Org.Property

        public var values: [Schema_Org.Value]

        public init(_ property: Schema_Org.Property, _ values: [Schema_Org.Value]) {
            self.property = property
            self.values = values
        }
    }
}
