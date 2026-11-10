extension SchemaOrg.ConstraintNode {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.ConstraintNode.`Protocol` {

    public var constraintProperty: SchemaOrg.Range.ConstraintProperty? {
        get { self[first: "constraintProperty"] }
        set { self[first: "constraintProperty"] = newValue }
    }

    public var numConstraints: Swift.Int? {
        get { self[first: "numConstraints"] }
        set { self[first: "numConstraints"] = newValue }
    }
}
