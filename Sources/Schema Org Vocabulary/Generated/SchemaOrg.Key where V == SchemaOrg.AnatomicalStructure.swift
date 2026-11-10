extension SchemaOrg.Key where V == SchemaOrg.AnatomicalStructure {

    public static var arterialBranch: Self {
        Self("arterialBranch")
    }

    public static var branch: Self {
        Self("branch")
    }

    public static var connectedTo: Self {
        Self("connectedTo")
    }

    public static var insertion: Self {
        Self("insertion")
    }

    public static var relatedStructure: Self {
        Self("relatedStructure")
    }

    public static var subStructure: Self {
        Self("subStructure")
    }

    public static var supplyTo: Self {
        Self("supplyTo")
    }

    public static var tributary: Self {
        Self("tributary")
    }
}
