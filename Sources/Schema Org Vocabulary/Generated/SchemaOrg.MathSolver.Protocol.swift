extension SchemaOrg.MathSolver {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.MathSolver.`Protocol` {

    public var mathExpression: SchemaOrg.Range.MathExpression? {
        get { self[first: "mathExpression"] }
        set { self[first: "mathExpression"] = newValue }
    }
}
