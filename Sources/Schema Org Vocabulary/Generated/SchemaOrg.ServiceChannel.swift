extension SchemaOrg {

    public struct ServiceChannel: SchemaOrg.ServiceChannel.`Protocol`, Swift.Hashable {

        public static let type = "ServiceChannel"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ServiceChannel {

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
        availableLanguage: SchemaOrg.Range.AvailableLanguage? = nil,
        processingTime: ISO_8601.Duration? = nil,
        providesService: SchemaOrg.Service? = nil,
        serviceLocation: SchemaOrg.Place? = nil,
        servicePhone: SchemaOrg.ContactPoint? = nil,
        servicePostalAddress: SchemaOrg.PostalAddress? = nil,
        serviceSmsNumber: SchemaOrg.ContactPoint? = nil,
        serviceUrl: RFC_3986.URI? = nil
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
        self.availableLanguage = availableLanguage
        self.processingTime = processingTime
        self.providesService = providesService
        self.serviceLocation = serviceLocation
        self.servicePhone = servicePhone
        self.servicePostalAddress = servicePostalAddress
        self.serviceSmsNumber = serviceSmsNumber
        self.serviceUrl = serviceUrl
    }
}
