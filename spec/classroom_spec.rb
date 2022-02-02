require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'It should create rental' do
    class1 = Classroom.new('grade1')
    student1 = Student.new('grade1', 18, 'student1')
    it 'should check rental data' do
      class1.add_student(student1)
      expect(class1.label).to eq 'grade1'
      expect(student1.classroom.label).to eq 'grade1'
    end
  end
end
