extension SchemaOrg.Book {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.Book.`Protocol` {

    public var abridged: Swift.Bool? {
        get { self[first: "abridged"] }
        set { self[first: "abridged"] = newValue }
    }

    public var bookEdition: Swift.String? {
        get { self[first: "bookEdition"] }
        set { self[first: "bookEdition"] = newValue }
    }

    public var bookFormat: SchemaOrg.BookFormatType? {
        get { self[first: "bookFormat"] }
        set { self[first: "bookFormat"] = newValue }
    }

    public var illustrator: SchemaOrg.Person? {
        get { self[first: "illustrator"] }
        set { self[first: "illustrator"] = newValue }
    }

    public var isbn: Swift.String? {
        get { self[first: "isbn"] }
        set { self[first: "isbn"] = newValue }
    }

    public var numberOfPages: Swift.Int? {
        get { self[first: "numberOfPages"] }
        set { self[first: "numberOfPages"] = newValue }
    }
}
