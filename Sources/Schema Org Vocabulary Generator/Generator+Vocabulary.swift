extension Generator {

    init(vocabulary: Vocabulary) {
        self.vocabulary = vocabulary
        self.dataTypes = vocabulary.classes.filter { name in
            name == "DataType" || vocabulary.dataTypes.contains { Self.isA(name, $0, parents: vocabulary.parents) }
        }
    }

    static func isA(_ name: Swift.String, _ ancestor: Swift.String, parents: [Swift.String: [Swift.String]]) -> Swift.Bool {
        name == ancestor || (parents[name] ?? []).contains { isA($0, ancestor, parents: parents) }
    }

    var classes: [Swift.String] {
        vocabulary.classes.sorted()
    }

    var nodeClasses: [Swift.String] {
        classes.filter { !dataTypes.contains($0) }
    }
}
