struct Generator {

    var vocabulary: Vocabulary

    var types: [Swift.String]

    var enumerations: Swift.Set<Swift.String>

    var properties: [Swift.String: Generator.Property]

    var own: [Swift.String: [Swift.String]]

    var shared: [Swift.String: [Swift.String]]

    var depths: [Swift.String: Swift.Int]
}
