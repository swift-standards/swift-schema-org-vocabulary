extension SchemaOrg.LendAction {

    public protocol `Protocol`: SchemaOrg.TransferAction.`Protocol` {}
}

extension SchemaOrg.LendAction.`Protocol` {

    public var borrower: SchemaOrg.Person? {
        get { self[first: "borrower"] }
        set { self[first: "borrower"] = newValue }
    }
}
