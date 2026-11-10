extension SchemaOrg {

    public struct PeopleAudience: SchemaOrg.PeopleAudience.`Protocol`, Swift.Hashable {

        public static let type = "PeopleAudience"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.PeopleAudience {

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
        healthCondition: SchemaOrg.MedicalCondition? = nil,
        requiredGender: Swift.String? = nil,
        requiredMaxAge: Swift.Int? = nil,
        requiredMinAge: Swift.Int? = nil,
        suggestedAge: SchemaOrg.QuantitativeValue? = nil,
        suggestedGender: SchemaOrg.Range.SuggestedGender? = nil,
        suggestedMaxAge: Swift.Double? = nil,
        suggestedMeasurement: SchemaOrg.QuantitativeValue? = nil,
        suggestedMinAge: Swift.Double? = nil,
        audienceType: Swift.String? = nil,
        geographicArea: SchemaOrg.AdministrativeArea? = nil
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
        self.healthCondition = healthCondition
        self.requiredGender = requiredGender
        self.requiredMaxAge = requiredMaxAge
        self.requiredMinAge = requiredMinAge
        self.suggestedAge = suggestedAge
        self.suggestedGender = suggestedGender
        self.suggestedMaxAge = suggestedMaxAge
        self.suggestedMeasurement = suggestedMeasurement
        self.suggestedMinAge = suggestedMinAge
        self.audienceType = audienceType
        self.geographicArea = geographicArea
    }
}
