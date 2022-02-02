require_relative '../methods/create_book'
require_relative '../book'

describe CreateBook do
  context 'It should create book' do
    book = Book.new('Book1', 'Author1')
    it 'should create book' do
      expect(book.title).to eq 'Book1'
      expect(book.author).to eq 'Author1'
    end
  end
end
