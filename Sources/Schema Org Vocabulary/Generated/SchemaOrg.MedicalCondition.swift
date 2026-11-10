extension SchemaOrg {

    public struct MedicalCondition: SchemaOrg.MedicalCondition.`Protocol`, Swift.Hashable {

        public static let type = "MedicalCondition"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.MedicalCondition {

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
        associatedAnatomy: SchemaOrg.Range.AssociatedAnatomy? = nil,
        cause: SchemaOrg.MedicalCause? = nil,
        differentialDiagnosis: SchemaOrg.DDxElement? = nil,
        drug: SchemaOrg.Drug? = nil,
        epidemiology: Swift.String? = nil,
        expectedPrognosis: Swift.String? = nil,
        naturalProgression: Swift.String? = nil,
        pathophysiology: Swift.String? = nil,
        possibleComplication: Swift.String? = nil,
        possibleTreatment: SchemaOrg.Range.PossibleTreatment? = nil,
        primaryPrevention: SchemaOrg.MedicalTherapy? = nil,
        riskFactor: SchemaOrg.MedicalRiskFactor? = nil,
        secondaryPrevention: SchemaOrg.Range.SecondaryPrevention? = nil,
        signOrSymptom: SchemaOrg.MedicalSignOrSymptom? = nil,
        stage: SchemaOrg.MedicalConditionStage? = nil,
        status: SchemaOrg.Range.Status? = nil,
        typicalTest: SchemaOrg.MedicalTest? = nil,
        code: SchemaOrg.MedicalCode? = nil,
        funding: SchemaOrg.Grant? = nil,
        guideline: SchemaOrg.MedicalGuideline? = nil,
        legalStatus: SchemaOrg.Range.LegalStatus? = nil,
        medicineSystem: SchemaOrg.MedicineSystem? = nil,
        recognizingAuthority: SchemaOrg.Organization? = nil,
        relevantSpecialty: SchemaOrg.MedicalSpecialty? = nil,
        study: SchemaOrg.MedicalStudy? = nil
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
        self.associatedAnatomy = associatedAnatomy
        self.cause = cause
        self.differentialDiagnosis = differentialDiagnosis
        self.drug = drug
        self.epidemiology = epidemiology
        self.expectedPrognosis = expectedPrognosis
        self.naturalProgression = naturalProgression
        self.pathophysiology = pathophysiology
        self.possibleComplication = possibleComplication
        self.possibleTreatment = possibleTreatment
        self.primaryPrevention = primaryPrevention
        self.riskFactor = riskFactor
        self.secondaryPrevention = secondaryPrevention
        self.signOrSymptom = signOrSymptom
        self.stage = stage
        self.status = status
        self.typicalTest = typicalTest
        self.code = code
        self.funding = funding
        self.guideline = guideline
        self.legalStatus = legalStatus
        self.medicineSystem = medicineSystem
        self.recognizingAuthority = recognizingAuthority
        self.relevantSpecialty = relevantSpecialty
        self.study = study
    }
}
