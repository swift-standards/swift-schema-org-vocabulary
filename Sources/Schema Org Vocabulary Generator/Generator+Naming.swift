extension Generator {

    static let keywords: Swift.Set<Swift.String> = [
        "class", "default", "case", "enum", "struct", "protocol", "func", "var", "let", "import", "return",
        "self", "Self", "super", "init", "deinit", "extension", "operator", "static", "subscript", "typealias",
        "where", "while", "for", "in", "if", "else", "switch", "do", "repeat", "break", "continue", "throw",
        "throws", "try", "catch", "is", "as", "nil", "true", "false", "public", "private", "internal",
        "fileprivate", "open", "inout", "associatedtype", "guard", "defer", "fallthrough", "Any", "Type",
        "Protocol",
    ]

    static let limit = 200

    static func identifier(_ name: Swift.String) -> Swift.String {
        keywords.contains(name) || (name.first?.isNumber ?? false) ? "`" + name + "`" : name
    }

    static func lower(_ name: Swift.String) -> Swift.String {
        let characters = Swift.Array(name)
        let run = characters.prefix { $0.isASCII && $0.isUppercase }.count
        let length =
            run == characters.count
            ? run
            : (characters[run].isLowercase && run > 2 ? run - 1 : Swift.min(run, 1))
        return Swift.String(characters.prefix(length)).lowercased() + Swift.String(characters.dropFirst(length))
    }

    static func name(_ term: Swift.String) -> Swift.String {
        identifier(lower(term))
    }

    static func references(_ terms: [Swift.String]) -> [Swift.String] {
        terms.map { "." + name($0) }
    }
}
