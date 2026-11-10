extension SchemaOrg {

    public struct Invoice: SchemaOrg.Invoice.`Protocol`, Swift.Hashable {

        public static let type = "Invoice"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Invoice {

    public init(
        id: Swift.String? = nil,
        additionalType: SchemaOrg.Range.AdditionalType? = nil,
        alternateName: Swift.String? = nil,
        description: SchemaOrg.Range.Description? = nil,
        disambiguatingDescription: Swift.String? = nil,
        identifier: SchemaOrg.Range.Identifier? = nil,
        image: SchemaOrg.Range.Image? = nil,
        mainEntityOfPage: SchemaOrg.Range.MainEntityOfPage? = nil,
        name: Swift.String? = nil,
        owner: SchemaOrg.Range.Owner? = nil,
        potentialAction: SchemaOrg.Action? = nil,
        sameAs: RFC_3986.URI? = nil,
        subjectOf: SchemaOrg.Range.SubjectOf? = nil,
        url: RFC_3986.URI? = nil,
        accountId: Swift.String? = nil,
        billingPeriod: ISO_8601.Duration? = nil,
        broker: SchemaOrg.Range.Broker? = nil,
        category: SchemaOrg.Range.Category? = nil,
        confirmationNumber: Swift.String? = nil,
        customer: SchemaOrg.Range.Customer? = nil,
        minimumPaymentDue: SchemaOrg.Range.MinimumPaymentDue? = nil,
        paymentDue: ISO_8601.DateTime? = nil,
        paymentDueDate: SchemaOrg.Range.PaymentDueDate? = nil,
        paymentMethod: SchemaOrg.Range.PaymentMethod? = nil,
        paymentMethodId: Swift.String? = nil,
        paymentStatus: SchemaOrg.Range.PaymentStatus? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        referencesOrder: SchemaOrg.Order? = nil,
        scheduledPaymentDate: ISO_8601.CalendarDate? = nil,
        totalPaymentDue: SchemaOrg.Range.TotalPaymentDue? = nil
    ) {
        self.init(node: W3C_JSON_LD.Node(id: id, types: [Self.type]))
        self.additionalType = additionalType
        self.alternateName = alternateName
        self.description = description
        self.disambiguatingDescription = disambiguatingDescription
        self.identifier = identifier
        self.image = image
        self.mainEntityOfPage = mainEntityOfPage
        self.name = name
        self.owner = owner
        self.potentialAction = potentialAction
        self.sameAs = sameAs
        self.subjectOf = subjectOf
        self.url = url
        self.accountId = accountId
        self.billingPeriod = billingPeriod
        self.broker = broker
        self.category = category
        self.confirmationNumber = confirmationNumber
        self.customer = customer
        self.minimumPaymentDue = minimumPaymentDue
        self.paymentDue = paymentDue
        self.paymentDueDate = paymentDueDate
        self.paymentMethod = paymentMethod
        self.paymentMethodId = paymentMethodId
        self.paymentStatus = paymentStatus
        self.provider = provider
        self.referencesOrder = referencesOrder
        self.scheduledPaymentDate = scheduledPaymentDate
        self.totalPaymentDue = totalPaymentDue
    }
}
