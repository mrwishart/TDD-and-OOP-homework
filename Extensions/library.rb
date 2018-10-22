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


  # def change_rental(book_name, rental_name, rental_date, new_date)
  #
  #   # Find book via name
  #   book_to_change = find_book(book_name)
  #   # Create rental details using arguments
  #   current_rental = {student_name: rental_name,
  #   date: rental_date}
  #
  #   # Check book found AND rental details are the same
  #   if (book_to_change != nil && book_to_change[:rental_details] == current_rental)
  #
  #     for book in @books
  #
  #       if book_to_change == book
  #         book[:rental_details][:date] = new_date
  #         break
  #       end
  #
  #     end
  #
  #   end
  #
  # end

  def change_rental(book_name, rental_name, rental_date, new_date)

    for book in @books

      if (book[:title] == book_name) && (book[:rental_details][:student_name] == rental_name) && (book[:rental_details][:date] == rental_date)

        book[:rental_details][:date] = new_date

        break

      end

    end

  end


end
