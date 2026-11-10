extension SchemaOrg.BorrowAction {

    public protocol `Protocol`: SchemaOrg.TransferAction.`Protocol` {}
}

extension SchemaOrg.BorrowAction.`Protocol` {

    public var lender: SchemaOrg.Range.Lender? {
        get { self[first: "lender"] }
        set { self[first: "lender"] = newValue }
    }
}
