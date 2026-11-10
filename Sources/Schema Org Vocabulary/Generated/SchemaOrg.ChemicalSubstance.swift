extension SchemaOrg {

    public struct ChemicalSubstance: SchemaOrg.ChemicalSubstance.`Protocol`, Swift.Hashable {

        public static let type = "ChemicalSubstance"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ChemicalSubstance {

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
        chemicalComposition: Swift.String? = nil,
        chemicalRole: SchemaOrg.DefinedTerm? = nil,
        potentialUse: SchemaOrg.DefinedTerm? = nil,
        associatedDisease: SchemaOrg.Range.AssociatedDisease? = nil,
        bioChemInteraction: SchemaOrg.BioChemEntity? = nil,
        bioChemSimilarity: SchemaOrg.BioChemEntity? = nil,
        biologicalRole: SchemaOrg.DefinedTerm? = nil,
        funding: SchemaOrg.Grant? = nil,
        hasBioChemEntityPart: SchemaOrg.BioChemEntity? = nil,
        hasMolecularFunction: SchemaOrg.Range.HasMolecularFunction? = nil,
        hasRepresentation: SchemaOrg.Range.HasRepresentation? = nil,
        isEncodedByBioChemEntity: SchemaOrg.Gene? = nil,
        isInvolvedInBiologicalProcess: SchemaOrg.Range.IsInvolvedInBiologicalProcess? = nil,
        isLocatedInSubcellularLocation: SchemaOrg.Range.IsLocatedInSubcellularLocation? = nil,
        isPartOfBioChemEntity: SchemaOrg.BioChemEntity? = nil,
        taxonomicRange: SchemaOrg.Range.TaxonomicRange? = nil
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
        self.chemicalComposition = chemicalComposition
        self.chemicalRole = chemicalRole
        self.potentialUse = potentialUse
        self.associatedDisease = associatedDisease
        self.bioChemInteraction = bioChemInteraction
        self.bioChemSimilarity = bioChemSimilarity
        self.biologicalRole = biologicalRole
        self.funding = funding
        self.hasBioChemEntityPart = hasBioChemEntityPart
        self.hasMolecularFunction = hasMolecularFunction
        self.hasRepresentation = hasRepresentation
        self.isEncodedByBioChemEntity = isEncodedByBioChemEntity
        self.isInvolvedInBiologicalProcess = isInvolvedInBiologicalProcess
        self.isLocatedInSubcellularLocation = isLocatedInSubcellularLocation
        self.isPartOfBioChemEntity = isPartOfBioChemEntity
        self.taxonomicRange = taxonomicRange
    }
}
