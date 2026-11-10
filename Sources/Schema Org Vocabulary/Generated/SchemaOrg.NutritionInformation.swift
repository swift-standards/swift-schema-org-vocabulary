extension SchemaOrg {

    public struct NutritionInformation: SchemaOrg.NutritionInformation.`Protocol`, Swift.Hashable {

        public static let type = "NutritionInformation"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.NutritionInformation {

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
        calories: Swift.String? = nil,
        carbohydrateContent: Swift.String? = nil,
        cholesterolContent: Swift.String? = nil,
        fatContent: Swift.String? = nil,
        fiberContent: Swift.String? = nil,
        proteinContent: Swift.String? = nil,
        saturatedFatContent: Swift.String? = nil,
        servingSize: Swift.String? = nil,
        sodiumContent: Swift.String? = nil,
        sugarContent: Swift.String? = nil,
        transFatContent: Swift.String? = nil,
        unsaturatedFatContent: Swift.String? = nil
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
        self.calories = calories
        self.carbohydrateContent = carbohydrateContent
        self.cholesterolContent = cholesterolContent
        self.fatContent = fatContent
        self.fiberContent = fiberContent
        self.proteinContent = proteinContent
        self.saturatedFatContent = saturatedFatContent
        self.servingSize = servingSize
        self.sodiumContent = sodiumContent
        self.sugarContent = sugarContent
        self.transFatContent = transFatContent
        self.unsaturatedFatContent = unsaturatedFatContent
    }
}
