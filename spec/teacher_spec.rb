require_relative '../teacher'



describe Teacher do
  context "It should create teacher" do
    teacher1 = Teacher.new(50, "teach", "teacher1")
    it "should check teacher data" do
      expect(teacher1.age).to eq 50
      expect(teacher1.name).to eq "teacher1"
      expect(teacher1.specialization).to eq "teach"

    end   
  end  
end