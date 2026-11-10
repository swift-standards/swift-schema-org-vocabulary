extension Generator {

    var files: [Generator.File] {
        [
            Generator.File(name: "SchemaOrg.Class+Vocabulary.swift", text: classText),
            Generator.File(name: "SchemaOrg.Property+Vocabulary.swift", text: propertyText),
            Generator.File(name: "SchemaOrg.Member+Vocabulary.swift", text: memberText),
            Generator.File(name: "SchemaOrg.Node+Vocabulary.swift", text: nodeText),
            Generator.File(name: "SchemaOrg.Value+Vocabulary.swift", text: valueText),
            Generator.File(name: "SchemaOrg.Assignment+Vocabulary.swift", text: assignmentText),
        ]
    }

    var classText: Swift.String {
        "extension SchemaOrg.Class {\n\n"
            + classes.map { term in
                Self.declaration(
                    Self.name(term),
                    term: term,
                    arguments: [("parents", Self.references(vocabulary.parents[term] ?? []))]
                )
            }.joined(separator: "\n")
            + "}\n\n" + Self.index(of: "SchemaOrg.Class", names: classes.map(Self.name))
    }

    var propertyText: Swift.String {
        "extension SchemaOrg.Property {\n\n"
            + vocabulary.properties.map { property in
                Self.declaration(
                    Self.identifier(property.name),
                    term: property.name,
                    arguments: [("domains", Self.references(property.domains)), ("ranges", Self.references(property.range))]
                )
            }.joined(separator: "\n")
            + "}\n\n" + Self.index(of: "SchemaOrg.Property", names: vocabulary.properties.map { Self.identifier($0.name) })
    }

    var memberText: Swift.String {
        let members = vocabulary.members.keys.sorted()
        return "extension SchemaOrg.Member {\n\n"
            + members.map { term in
                Self.declaration(
                    Self.name(term),
                    term: term,
                    arguments: [("classes", Self.references(vocabulary.members[term] ?? []))]
                )
            }.joined(separator: "\n")
            + "}\n\n" + Self.index(of: "SchemaOrg.Member", names: members.map(Self.name))
    }

    var nodeText: Swift.String {
        "extension SchemaOrg.Node {\n\n"
            + nodeClasses.map { term in
                "    public static func \(Self.name(term))(_ assignments: SchemaOrg.Assignment...) -> Self {\n"
                    + "        Self(.\(Self.name(term)), assignments)\n    }\n"
            }.joined(separator: "\n")
            + "}\n"
    }

    var valueText: Swift.String {
        "extension SchemaOrg.Value {\n\n"
            + nodeClasses.map { term in
                "    public static func \(Self.name(term))(_ assignments: SchemaOrg.Assignment...) -> Self {\n"
                    + "        Self(SchemaOrg.Node(.\(Self.name(term)), assignments))\n    }\n"
            }.joined(separator: "\n")
            + "}\n"
    }

    var assignmentText: Swift.String {
        "extension SchemaOrg.Assignment {\n\n"
            + vocabulary.properties.map { property in
                "    public static func \(Self.identifier(property.name))(_ values: SchemaOrg.Value...) -> Self {\n"
                    + "        Self(.\(Self.identifier(property.name)), values)\n    }\n"
            }.joined(separator: "\n")
            + "}\n"
    }
}
