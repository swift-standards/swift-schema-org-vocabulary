extension Generator {

    static func declaration(
        _ name: Swift.String,
        term: Swift.String,
        arguments: [(label: Swift.String, items: [Swift.String])]
    ) -> Swift.String {
        let lists = arguments.filter { !$0.items.isEmpty }
        let head = "    public static let \(name): Self = Self("
        let line =
            head
            + (["\"\(term)\""] + lists.map { "\($0.label): [" + $0.items.joined(separator: ", ") + "]" })
            .joined(separator: ", ") + ")\n"
        guard line.count >= limit else { return line }
        let parts =
            ["        \"\(term)\""]
            + lists.map { list in
                let inline = "        \(list.label): [" + list.items.joined(separator: ", ") + "]"
                return inline.count + 1 < limit
                    ? inline
                    : "        \(list.label): [\n" + list.items.map { "            \($0),\n" }.joined() + "        ]"
            }
        return head + "\n" + parts.joined(separator: ",\n") + "\n    )\n"
    }

    static func index(of type: Swift.String, names: [Swift.String]) -> Swift.String {
        "extension \(type) {\n\n    static let all: [\(type)] = [\n"
            + names.map { "        .\($0),\n" }.joined()
            + "    ]\n}\n"
    }
}
