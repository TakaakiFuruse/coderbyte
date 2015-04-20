require_relative "solution"

describe "DashInsertII" do
  let(:test1) {DashInsertII.new(99946)}
  let(:test2) {DashInsertII.new(56647304)}
  let(:test3) {DashInsertII.new(4546793)}

  describe "#num_into_array" do
    it "changes num into array" do
      expect(test1.num_array).to eq(["9", "9", "9", "4", "6"])
    end
  end

  describe "#answer" do
    it "do 2nd even -> - , odd -> * " do
      expect(test1.answer).to eq("99-946*")
      expect(test2.answer).to eq("566*47-30*4")
      expect(test3.answer).to eq("454*67-93-")
    end
  end
end