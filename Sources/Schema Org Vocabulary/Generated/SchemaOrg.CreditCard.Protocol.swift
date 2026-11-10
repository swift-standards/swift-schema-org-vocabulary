extension SchemaOrg.CreditCard {

    public protocol `Protocol`:
        SchemaOrg.LoanOrCredit.`Protocol`,
        SchemaOrg.PaymentCard.`Protocol`
    {}
}
