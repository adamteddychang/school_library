require_relative 'input'
class CreateRental
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
    @input = Input.new
  end

  def new_rent
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }

    book_id = @input.read.to_i

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    id = @input.read.to_i

    print 'Date: '
    puts date = Time.new.strftime('%d/%m/%Y')
    # date = @input.read.to_s
    rental = Rental.new(date, @books[book_id], @people[id])
    @rentals.push(rental)

    puts 'Rental created successfully'
    sleep 0.75
  end
end
