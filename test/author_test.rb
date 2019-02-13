require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  end

  def test_author_starts_with_no_books
    assert_equal [], @nk_jemisin.books
  end

  def test_author_can_add_books
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    book_attributes = { author_first_name: "N.K",
                        author_last_name: "Jesimin",
                        title: "The Fifth Season",
                        publication_date: "November 3, 2015" }

    book = Book.new(book_attributes)

    assert_equal [book], @nk_jemisin.books
  end

end
