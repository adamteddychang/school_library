require 'json'
require_relative 'person'
require_relative 'student'
require_relative 'book'
require_relative 'classroom'
require_relative 'teacher'
require_relative 'rental'
require_relative 'methods/create_person'
require_relative 'methods/input'
require_relative 'methods/create_book'
require_relative 'methods/create_rental'
require_relative 'data/rundata.rb'
require_relative 'data/read_data'

class App
  def initialize
    @people = ReadData.new.read_people
    # @people = []
    @books = ReadData.new.read_books
    # @books = []
    @rentals =ReadData.new.read_rentals
    @age = ''
    @name = ''
    @create_person = CreatePerson.new(@people)
    @create_book = CreateBook.new(@books)
    @create_rental = CreateRental.new(@books, @people, @rentals)
    @run_data = Data.new(@people, @books, @rentals)
    @input = Input.new
  end

  def get_num(option)
    case option
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      @create_person.person_option
    when '4'
      @create_book.newbook
    when '5'
      @create_rental.new_rent
    when '6'
      list_rentals_by_person_id
    else
      puts 'Please enter a number between 1 and 7.'
    end
  end

  def savedata 
    @run_data.save_ppl
    @run_data.save_books
    @run_data.save_rentals
  end


  def list_all_books
    puts 'No books in the database! Please add a book.' if @books.empty?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    sleep 0.75
  end

  def list_all_people
    puts 'No people in the database! Please add a person.' if @people.empty?
    puts @people[0]   
    @people.map { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    sleep 0.75
  end
end

def list_rentals_by_person_id
    puts @rentals
  print 'ID of person: '
  id = @input.read.to_i
  puts 'Rentals:'
  @rentals.each do |rental|
    puts "Date: #{rental.date}, Book '#{rental.title}' by #{rental.author}" if rental.id == id
  end
  sleep 0.75
end
