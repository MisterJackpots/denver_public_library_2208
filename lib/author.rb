class Author
  attr_reader :name,
              :books

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @name = attributes[:first_name] + " " + attributes[:last_name]
    @books = []
  end

  def write(title, publication_date)
    new_book = Book.new({
      title: title,
      author_first_name: @first_name,
      author_last_name: @last_name,
      publication_date: publication_date
    })
    @books << new_book
    new_book
  end

end