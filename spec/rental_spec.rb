require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  context 'It should create rental' do
    book = Book.new('Book1', 'Author1')
    person = Person.new(18, 'person1', true)
    rental1 = Rental.new('2/2/22', book, person)
    it 'should check rental data' do
      expect(rental1.person.name).to eq 'person1'
      expect(rental1.book.title).to eq 'Book1'
      expect(rental1.date).to eq '2/2/22'
    end
  end
end
