extension SchemaOrg.QuantitativeValueDistribution {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Duration
    {}
}

extension SchemaOrg.QuantitativeValueDistribution.`Protocol` {

    public var median: Swift.Double? {
        get { self[first: "median"] }
        set { self[first: "median"] = newValue }
    }

    public var percentile10: Swift.Double? {
        get { self[first: "percentile10"] }
        set { self[first: "percentile10"] = newValue }
    }

    public var percentile25: Swift.Double? {
        get { self[first: "percentile25"] }
        set { self[first: "percentile25"] = newValue }
    }

    public var percentile75: Swift.Double? {
        get { self[first: "percentile75"] }
        set { self[first: "percentile75"] = newValue }
    }

    public var percentile90: Swift.Double? {
        get { self[first: "percentile90"] }
        set { self[first: "percentile90"] = newValue }
    }
}
