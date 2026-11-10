extension Generator {

    var files: [Generator.File] {
        [
            Generator.File(name: "Schema_Org.Class+Vocabulary.swift", text: classText),
            Generator.File(name: "Schema_Org.Property+Vocabulary.swift", text: propertyText),
            Generator.File(name: "Schema_Org.Member+Vocabulary.swift", text: memberText),
            Generator.File(name: "Schema_Org.Node+Vocabulary.swift", text: nodeText),
            Generator.File(name: "Schema_Org.Value+Vocabulary.swift", text: valueText),
            Generator.File(name: "Schema_Org.Assignment+Vocabulary.swift", text: assignmentText),
        ]
    }

    var classText: Swift.String {
        "extension Schema_Org.Class {\n\n"
            + classes.map { term in
                Self.declaration(
                    Self.name(term),
                    term: term,
                    arguments: [("parents", Self.references(vocabulary.parents[term] ?? []))]
                )
            }.joined(separator: "\n")
            + "}\n\n" + Self.index(of: "Schema_Org.Class", names: classes.map(Self.name))
    }

    var propertyText: Swift.String {
        "extension Schema_Org.Property {\n\n"
            + vocabulary.properties.map { property in
                Self.declaration(
                    Self.identifier(property.name),
                    term: property.name,
                    arguments: [("domains", Self.references(property.domains)), ("ranges", Self.references(property.range))]
                )
            }.joined(separator: "\n")
            + "}\n\n" + Self.index(of: "Schema_Org.Property", names: vocabulary.properties.map { Self.identifier($0.name) })
    }

    var memberText: Swift.String {
        let members = vocabulary.members.keys.sorted()
        return "extension Schema_Org.Member {\n\n"
            + members.map { term in
                Self.declaration(
                    Self.name(term),
                    term: term,
                    arguments: [("classes", Self.references(vocabulary.members[term] ?? []))]
                )
            }.joined(separator: "\n")
            + "}\n\n" + Self.index(of: "Schema_Org.Member", names: members.map(Self.name))
    }

    var nodeText: Swift.String {
        "extension Schema_Org.Node {\n\n"
            + nodeClasses.map { term in
                "    public static func \(Self.name(term))(_ assignments: Schema_Org.Assignment...) -> Self {\n"
                    + "        Self(.\(Self.name(term)), assignments)\n    }\n"
            }.joined(separator: "\n")
            + "}\n"
    }

    var valueText: Swift.String {
        "extension Schema_Org.Value {\n\n"
            + nodeClasses.map { term in
                "    public static func \(Self.name(term))(_ assignments: Schema_Org.Assignment...) -> Self {\n"
                    + "        Self(Schema_Org.Node(.\(Self.name(term)), assignments))\n    }\n"
            }.joined(separator: "\n")
            + "}\n"
    }

    var assignmentText: Swift.String {
        "extension Schema_Org.Assignment {\n\n"
            + vocabulary.properties.map { property in
                "    public static func \(Self.identifier(property.name))(_ values: Schema_Org.Value...) -> Self {\n"
                    + "        Self(.\(Self.identifier(property.name)), values)\n    }\n"
            }.joined(separator: "\n")
            + "}\n"
    }
}
