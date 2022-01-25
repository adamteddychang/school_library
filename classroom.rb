class Classroom
  attr_accessor :label
  attr_reader :students

  def intitialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end
