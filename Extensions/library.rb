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
  end

end
