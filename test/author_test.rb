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

    assert_instance_of Book, @nk_jemisin.books.first
    assert_equal 1, @nk_jemisin.books.length
    assert_equal "N.K.", @nk_jemisin.books.first.author_first_name
    assert_equal "Jemisin", @nk_jemisin.books.first.author_last_name
    assert_equal "The Fifth Season", @nk_jemisin.books.first.title
    assert_equal "2015", @nk_jemisin.books.first.publication_date
  end

end
