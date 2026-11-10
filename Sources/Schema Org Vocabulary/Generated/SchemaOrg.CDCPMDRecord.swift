extension SchemaOrg {

    public struct CDCPMDRecord: SchemaOrg.CDCPMDRecord.`Protocol`, Swift.Hashable {

        public static let type = "CDCPMDRecord"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.CDCPMDRecord {

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
        cvdCollectionDate: SchemaOrg.Range.CvdCollectionDate? = nil,
        cvdFacilityCounty: Swift.String? = nil,
        cvdFacilityId: Swift.String? = nil,
        cvdNumBeds: Swift.Double? = nil,
        cvdNumBedsOcc: Swift.Double? = nil,
        cvdNumC19Died: Swift.Double? = nil,
        cvdNumC19HOPats: Swift.Double? = nil,
        cvdNumC19HospPats: Swift.Double? = nil,
        cvdNumC19MechVentPats: Swift.Double? = nil,
        cvdNumC19OFMechVentPats: Swift.Double? = nil,
        cvdNumC19OverflowPats: Swift.Double? = nil,
        cvdNumICUBeds: Swift.Double? = nil,
        cvdNumICUBedsOcc: Swift.Double? = nil,
        cvdNumTotBeds: Swift.Double? = nil,
        cvdNumVent: Swift.Double? = nil,
        cvdNumVentUse: Swift.Double? = nil,
        datePosted: SchemaOrg.Range.DatePosted? = nil
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
        self.cvdCollectionDate = cvdCollectionDate
        self.cvdFacilityCounty = cvdFacilityCounty
        self.cvdFacilityId = cvdFacilityId
        self.cvdNumBeds = cvdNumBeds
        self.cvdNumBedsOcc = cvdNumBedsOcc
        self.cvdNumC19Died = cvdNumC19Died
        self.cvdNumC19HOPats = cvdNumC19HOPats
        self.cvdNumC19HospPats = cvdNumC19HospPats
        self.cvdNumC19MechVentPats = cvdNumC19MechVentPats
        self.cvdNumC19OFMechVentPats = cvdNumC19OFMechVentPats
        self.cvdNumC19OverflowPats = cvdNumC19OverflowPats
        self.cvdNumICUBeds = cvdNumICUBeds
        self.cvdNumICUBedsOcc = cvdNumICUBedsOcc
        self.cvdNumTotBeds = cvdNumTotBeds
        self.cvdNumVent = cvdNumVent
        self.cvdNumVentUse = cvdNumVentUse
        self.datePosted = datePosted
    }
}
