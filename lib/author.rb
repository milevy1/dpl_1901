class Author
  attr_reader :books

  def initialize(author_attributes)
    @first_name = author_attributes[:first_name]
    @last_name = author_attributes[:last_name]
    @books = []
  end

end
