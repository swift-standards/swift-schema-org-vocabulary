extension SchemaOrg.Key where V == SchemaOrg.MedicalTest {

    public static var availableTest: Self {
        Self("availableTest")
    }

    public static var identifyingTest: Self {
        Self("identifyingTest")
    }

    public static var subTest: Self {
        Self("subTest")
    }

    public static var typicalTest: Self {
        Self("typicalTest")
    }
}
