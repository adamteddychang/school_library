require_relative 'create_student'

class CreatePerson
  def initialize
    @age = ''
    @name = ''
    @option = ''
  end

  def person_option
    print 'Would you like to create a student(1) or a teacher(2) [Please input a number]: '
    @option = gets.chomp
  
ask_nameage

  case @option
  when '1'
    @create_student
  when '2'
    create_teacher
  else
    puts 'Invalid input. Please input 1 or 2'
  end
end
end

def ask_nameage 
    print 'Age: '
    @age = gets.chomp.to_i
  
    print 'Name: '
    @name = gets.chomp
end

