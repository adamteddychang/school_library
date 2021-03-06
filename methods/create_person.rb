require_relative 'create_student'
require_relative 'create_teacher'
require_relative 'input'

class CreatePerson
  def initialize(people)
    @people = people
    @age = ''
    @name = ''
    @option = ''
    @input = Input.new
  end

  def person_option
    print 'Would you like to create a student(1) or a teacher(2) [Please input a number]: '
    @option = @input.read

    ask_nameage
    case @option
    when '1'
      @create_student = CreateStudent.new(@people, @age, @name)
      @create_student.my_permission
    when '2'
      @create_teacher = CreateTeacher.new(@people, @age, @name)
      @create_teacher.teacher_info
    else
      puts 'Invalid input. Please input 1 or 2'
    end
  end
end

def ask_nameage
  print 'Age: '
  @age = @input.read.to_i

  print 'Name: '
  @name = @input.read
end
