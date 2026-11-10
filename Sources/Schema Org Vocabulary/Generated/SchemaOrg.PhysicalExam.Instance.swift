extension SchemaOrg.PhysicalExam {

    public struct Instance: SchemaOrg.PhysicalExam.`Protocol`, Swift.Hashable {

        public static let type = "PhysicalExam"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.PhysicalExam.Instance {

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
        bodyLocation: Swift.String? = nil,
        followup: Swift.String? = nil,
        howPerformed: Swift.String? = nil,
        preparation: SchemaOrg.Range.Preparation? = nil,
        procedureType: SchemaOrg.MedicalProcedureType? = nil,
        status: SchemaOrg.Range.Status? = nil,
        supersededBy: SchemaOrg.Range.SupersededBy? = nil,
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
        self.bodyLocation = bodyLocation
        self.followup = followup
        self.howPerformed = howPerformed
        self.preparation = preparation
        self.procedureType = procedureType
        self.status = status
        self.supersededBy = supersededBy
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
