require_relative 'input'
class CreateStudent
  def initialize(people, age, name)
    @people = people
    @input = Input.new
    @age = age
    @name = name
  end

  def my_permission
    print 'Has parent permission? [Y/N]: '
    parent_permission = @input.read.downcase

    student = Student.new(@class, @age, @name, parent_permission)
    @people << student

    puts 'Student created successfully'
    sleep 0.75
  end
end
