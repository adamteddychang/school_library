require 'json'
require_relative '../person'
require_relative '../student'
require_relative '../book'
require_relative '../classroom'
require_relative '../teacher'
require_relative '../rental'

class Data 
  def initialize(people, books, rentals)
    @people = people
    @books = books 
    @rentals = rentals
    @age = ''
    @name = ''
  end

  def save_ppl
    path = 'data/people.json'
    ppljson = []
    @people.each do |person|
      ppljson.push({class: person.class, name: person.name, id: person.id, age: person.age})
    end
    File.open(path, 'w') do |file|
      JSON.dump(ppljson, file)
    end
    
  end 

  def save_books
    path = 'data/books.json'
    booksjson = []
    @books.each do |book|
      booksjson.push({title: book.title, author: book.author})
    end
    File.open(path, 'w') do |file|
      JSON.dump(booksjson, file)
    end
  end

  def save_rentals
    path = 'data/rental.json'
    rentalsjson = []
    @rentals.each do |rental|
      
      rentalsjson.push({date: rental.date , id: rental.person.id , title: rental.book.title, author: rental.book.author}) 
      # rentalsjson.push({Date:Time.now, ids: rental.person.id , Book: rental.book.title})
    end
    File.open(path, 'w') do |file|
      JSON.dump(rentalsjson, file)
    end

  end

end
