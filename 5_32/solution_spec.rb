require_relative "solution"

describe "Division" do
  it "returns Gr Com Factor" do
    expect(Division(7,3)).to eq(1)
    expect(Division(36,54)).to eq(18)
    expect(Division(2910,1450)).to eq(10)
  end
end

describe "divisible_nums" do
  it "returns an array of divisible numbers of argument integer" do
    expect(divisible_nums(36)).to eq([1,2,3,4,6,9,12,18,36])
    expect(divisible_nums(48)).to eq([1,2,3,4,6,8,12,16,24,48])
  end
end
