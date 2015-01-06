require_relative "solution"


describe "#consecurtive" do
  it "returns how many nums need to be added to the array to make it a consecutive array" do
    expect(consecutive([4,8,6])).to eq(2)
    expect(consecutive([5,10,15])).to eq(8)
    expect(consecutive([-2,10,4])).to eq(10)
  end
end

describe "#consecutive_arr" do
  it "returns consecutive array" do
    expect(consecutive_arr([4,8,6])).to eq((4..8).to_a)
    expect(consecutive_arr([5,10,15])).to eq((5..15).to_a)
    expect(consecutive_arr([-2,10,4])).to eq((-2..10).to_a)
  end
end
