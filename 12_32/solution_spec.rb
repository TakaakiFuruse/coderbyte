
require_relative "solution"

describe "#simple_mode" do
  it "returns mode" do
    expect(simple_mode([10, 4, 5, 2, 4])).to eq(4)
    expect(simple_mode([5,5,2,2,1])).to eq(5)
  end

  it "returns -1 if there's no mode" do
    expect(simple_mode([3,4,1,6,10])).to eq(-1)
  end

end

describe "#count_mode" do
  it "returns hash.(key as num, value as frequency)" do
    expect(count_mode([10, 4, 5, 2, 4])).to eq({10 => 1, 4 => 2, 5 => 1, 2 => 1})
    expect(count_mode([5,5,2,2,1])).to eq({5 => 2, 2 => 2, 1 => 1})
    expect(count_mode([3,4,1,6,10])).to eq({3=> 1, 4 => 1, 1 => 1, 6 => 1, 10 => 1})
  end
end
