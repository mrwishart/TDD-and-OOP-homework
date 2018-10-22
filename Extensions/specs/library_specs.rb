require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @library1 = Library.new([{
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "animal_farm",
        rental_details: {
          student_name: "Bob",
          date: "05/11/15"
        }
      },
      {
        title: "life_of_pi",
        rental_details: {
          student_name: "Fred",
          date: "25/12/17"
        }
      }
    ])

  end

  def  test_gets_books__A

    new_library = [{
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "animal_farm",
        rental_details: {
          student_name: "Bob",
          date: "05/11/15"
        }
      },
      {
        title: "life_of_pi",
        rental_details: {
          student_name: "Fred",
          date: "25/12/17"
        }
      }
    ]

    assert_equal(new_library, @library1.books)

  end

  def test_gets_books__B

    assert_equal(3, @library1.books.length)

  end

  def test_find_book

    single_book = @library1.find_book("animal_farm")
    expected_book = {
      title: "animal_farm",
      rental_details: {
        student_name: "Bob",
        date: "05/11/15"
      }
    }

    assert_equal(expected_book, single_book)

  end

end
