class Rental
  attr_accessor :date, :book, :person

  attr_reader

  def initialize(date, book, person)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end
end
