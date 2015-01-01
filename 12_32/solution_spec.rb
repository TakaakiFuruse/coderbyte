
require_relative "solution"

describe "SimpleMode" do
  it "returns mode" do
    expect(simple_mode([10, 4, 5, 2, 4])).to eq(4)
    expect(simple_mode([5,5,2,2,1])).to eq(5)
  end

  it "returns -1 if there's no mode" do
    expect(simple_mode([3,4,1,6,10])).to eq(-1)
  end
end
