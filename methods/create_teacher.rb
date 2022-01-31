require_relative 'input'
class CreateTeacher
    def initialize(people,age,name)
        @people = people
        @age = age
        @name = name
        @input = Input.new
    end
    def teacher_info
    print 'Specialization: '
    specialization = @input.read

    teacher = Teacher.new(@age, specialization, @name)
    @people << teacher

    puts 'Teacher created successfully'
    sleep 0.75
    end
end