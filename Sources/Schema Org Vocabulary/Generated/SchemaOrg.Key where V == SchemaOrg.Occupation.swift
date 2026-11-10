extension SchemaOrg.Key where V == SchemaOrg.Occupation {

    public static var hasOccupation: Self {
        Self("hasOccupation")
    }

    public static var relevantOccupation: Self {
        Self("relevantOccupation")
    }
}
