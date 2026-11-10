extension SchemaOrg {

    public struct Order: SchemaOrg.Order.`Protocol`, Swift.Hashable {

        public static let type = "Order"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Order {

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
        acceptedOffer: SchemaOrg.Offer? = nil,
        billingAddress: SchemaOrg.PostalAddress? = nil,
        broker: SchemaOrg.Range.Broker? = nil,
        confirmationNumber: Swift.String? = nil,
        customer: SchemaOrg.Range.Customer? = nil,
        discount: SchemaOrg.Range.Discount? = nil,
        discountCode: Swift.String? = nil,
        discountCurrency: Swift.String? = nil,
        isGift: Swift.Bool? = nil,
        merchant: SchemaOrg.Range.Merchant? = nil,
        orderDate: SchemaOrg.Range.OrderDate? = nil,
        orderDelivery: SchemaOrg.ParcelDelivery? = nil,
        orderNumber: Swift.String? = nil,
        orderStatus: SchemaOrg.OrderStatus? = nil,
        orderedItem: SchemaOrg.Range.OrderedItem? = nil,
        partOfInvoice: SchemaOrg.Invoice? = nil,
        paymentDue: ISO_8601.DateTime? = nil,
        paymentDueDate: SchemaOrg.Range.PaymentDueDate? = nil,
        paymentMethod: SchemaOrg.Range.PaymentMethod? = nil,
        paymentMethodId: Swift.String? = nil,
        paymentUrl: RFC_3986.URI? = nil,
        seller: SchemaOrg.Range.Seller? = nil
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
        self.acceptedOffer = acceptedOffer
        self.billingAddress = billingAddress
        self.broker = broker
        self.confirmationNumber = confirmationNumber
        self.customer = customer
        self.discount = discount
        self.discountCode = discountCode
        self.discountCurrency = discountCurrency
        self.isGift = isGift
        self.merchant = merchant
        self.orderDate = orderDate
        self.orderDelivery = orderDelivery
        self.orderNumber = orderNumber
        self.orderStatus = orderStatus
        self.orderedItem = orderedItem
        self.partOfInvoice = partOfInvoice
        self.paymentDue = paymentDue
        self.paymentDueDate = paymentDueDate
        self.paymentMethod = paymentMethod
        self.paymentMethodId = paymentMethodId
        self.paymentUrl = paymentUrl
        self.seller = seller
    }
}
