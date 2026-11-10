extension Generator {

    enum Error: Swift.Error {

        case usage

        case open(Swift.String)

        case read(Swift.String)

        case write(Swift.String)

        case vocabulary(Vocabulary.Error)
    }
}
