require './test/test_helper'
require './lib/author'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  end

  def test_author_starts_with_no_books
    assert_equal [], @nk_jemisin.books
  end

end
