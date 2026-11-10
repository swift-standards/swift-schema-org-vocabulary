extension SchemaOrg {

    public struct ContactPoint: SchemaOrg.ContactPoint.`Protocol`, Swift.Hashable {

        public static let type = "ContactPoint"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ContactPoint {

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
        areaServed: SchemaOrg.Range.AreaServed? = nil,
        availableLanguage: SchemaOrg.Range.AvailableLanguage? = nil,
        contactOption: SchemaOrg.ContactPointOption? = nil,
        contactType: Swift.String? = nil,
        email: Swift.String? = nil,
        faxNumber: Swift.String? = nil,
        hoursAvailable: SchemaOrg.OpeningHoursSpecification? = nil,
        productSupported: SchemaOrg.Range.ProductSupported? = nil,
        serviceArea: SchemaOrg.Range.ServiceArea? = nil,
        telephone: Swift.String? = nil
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
        self.areaServed = areaServed
        self.availableLanguage = availableLanguage
        self.contactOption = contactOption
        self.contactType = contactType
        self.email = email
        self.faxNumber = faxNumber
        self.hoursAvailable = hoursAvailable
        self.productSupported = productSupported
        self.serviceArea = serviceArea
        self.telephone = telephone
    }
}
