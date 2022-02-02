require_relative '../student'

describe Student do
  context 'It should create student' do
    student1 = Student.new('grade1', 18, 'student1')
    it 'should check student data' do
      expect(student1.age).to eq 18
      expect(student1.name).to eq 'student1'
      expect(student1.classroom).to eq 'grade1'
    end
  end
end
