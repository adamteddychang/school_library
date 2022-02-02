require_relative '../person'

describe Person do
  context 'It should create a person' do
    person1 = Person.new(18, 'person1', true)
    person2 = Person.new(17, 'person2', false)
    it 'see if person is of age' do
      expect(person1.ofage?).to eq true
      expect(person2.ofage?).to eq false
    end

    it 'can use services if of age or has permission' do
      expect(person1.use_services?).to eq true
      expect(person2.use_services?).to eq false
    end
    it 'first letter cap and not over 10 char' do
      expect(person1.validate_name).to eq 'Person1'
      expect(person2.validate_name).to eq 'Person2'
    end
  end
end
