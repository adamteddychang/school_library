require_relative 'input'
class CreateBook
  def initialize(books)
    @books = books
    @input = Input.new
  end

  def newbook
    print 'Title: '
    title = @input.read

    print 'Author: '
    author = @input.read

    book = Book.new(title, author)
    @books << book

    puts 'Book added successfully'
    sleep 0.75
  end
end
