require_relative 'corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  private

  def ofage?
    return true unless age < 18
  end

  public

  def use_services?
    return true if ofage? || parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(name)
  end
end

person = Person.new(25, 'you-wei-adam-chang')
person.validate_name
