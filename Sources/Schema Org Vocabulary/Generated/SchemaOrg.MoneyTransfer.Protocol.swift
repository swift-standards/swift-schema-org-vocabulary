extension SchemaOrg.MoneyTransfer {

    public protocol `Protocol`:
        SchemaOrg.TransferAction.`Protocol`,
        SchemaOrg.Domain.Amount
    {}
}

extension SchemaOrg.MoneyTransfer.`Protocol` {

    public var beneficiaryBank: SchemaOrg.Range.BeneficiaryBank? {
        get { self[first: "beneficiaryBank"] }
        set { self[first: "beneficiaryBank"] = newValue }
    }
}
