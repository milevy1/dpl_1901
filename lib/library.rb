class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(book_title)
    @books.any? { |book| book.title == book_title }
  end

  def card_catalogue
    @books.sort_by { |book| book.author_last_name }
  end

  def find_by_author(author_full_name)
    books_by_author = @books.select { |book| author_full_name == book.author_full_name }

    grouped = books_by_author.group_by { |book| book.title }

    flattened_group = {}
    grouped.each { |title, book| flattened_group[title] = book[0] }

    flattened_group
  end

end
