struct Vocabulary {

    var classes: Swift.Set<Swift.String>

    var parents: [Swift.String: [Swift.String]]

    var members: [Swift.String: [Swift.String]]

    var properties: [Vocabulary.Property]
}
