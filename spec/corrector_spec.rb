require_relative '../corrector'

describe Corrector do
  context "correct name" do
  corrector = Corrector.new
  name1 = "mynameissomething"
  name2 = "Adam"
  
  it "correct the name" do
    expect(corrector.correct_name(name1)).to eq "Mynameisso"
    expect(corrector.correct_name(name2)).to eq "Adam"
  end
end
  
  
end
