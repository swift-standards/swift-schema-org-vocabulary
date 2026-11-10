extension SchemaOrg {

    public struct GeospatialGeometry: SchemaOrg.GeospatialGeometry.`Protocol`, Swift.Hashable {

        public static let type = "GeospatialGeometry"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.GeospatialGeometry {

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
        geoContains: SchemaOrg.Range.GeoContains? = nil,
        geoCoveredBy: SchemaOrg.Range.GeoCoveredBy? = nil,
        geoCovers: SchemaOrg.Range.GeoCovers? = nil,
        geoCrosses: SchemaOrg.Range.GeoCrosses? = nil,
        geoDisjoint: SchemaOrg.Range.GeoDisjoint? = nil,
        geoEquals: SchemaOrg.Range.GeoEquals? = nil,
        geoIntersects: SchemaOrg.Range.GeoIntersects? = nil,
        geoOverlaps: SchemaOrg.Range.GeoOverlaps? = nil,
        geoTouches: SchemaOrg.Range.GeoTouches? = nil,
        geoWithin: SchemaOrg.Range.GeoWithin? = nil
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
        self.geoContains = geoContains
        self.geoCoveredBy = geoCoveredBy
        self.geoCovers = geoCovers
        self.geoCrosses = geoCrosses
        self.geoDisjoint = geoDisjoint
        self.geoEquals = geoEquals
        self.geoIntersects = geoIntersects
        self.geoOverlaps = geoOverlaps
        self.geoTouches = geoTouches
        self.geoWithin = geoWithin
    }
}
