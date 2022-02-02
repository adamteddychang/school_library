require_relative 'corrector'
require_relative 'rental'

class Person
  attr_accessor :name, :age, :rentals, :parent_permission
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def ofage?
    age >= 18
  end

  def use_services?
    ofage? || parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(name)
  end
end

person = Person.new(25, 'you-wei-adam-chang')
person.validate_name
