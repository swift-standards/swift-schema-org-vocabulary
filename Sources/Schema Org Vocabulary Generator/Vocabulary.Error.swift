import RFC_8259

extension Vocabulary {

    enum Error: Swift.Error {

        case json(RFC_8259.Error)

        case graph
    }
}
