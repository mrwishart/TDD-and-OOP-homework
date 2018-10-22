class Library

  def initialize(books)
    @books = books
  end

  def books
    return @books
  end

  def find_book(book_name)
    for book in @books
      return book if book[:title] == book_name
    end

    #404: Book not found
    return nil
  end

  def find_rental(book_name)

    book = find_book(book_name)

    return book[:rental_details] if book != nil

    #404: Book not found
    return nil

  end

  def add_book(book_name)
    @books.push({title: book_name})
  end

end
