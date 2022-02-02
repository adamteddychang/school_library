class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @person = person
    person.rentals.push(self) unless self
    @book = book
    book.rentals.push(self) unless self
  end
end
