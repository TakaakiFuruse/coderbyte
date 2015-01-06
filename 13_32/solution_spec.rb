require_relative "solution"


describe "#consecurtive" do
  it "returns how many nums need to be added to the array to make it a consecutive array" do
    expect(consecutive([4,8,6])).to eq(2)
    expect(consecutive([5,10,15])).to eq(8)
    expect(consecutive([-2,10,4])).to eq(10)
  end
end