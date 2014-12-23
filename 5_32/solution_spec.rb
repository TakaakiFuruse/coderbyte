require_relative "solution"

describe "Division" do
  it "returns Gr Com Factor" do
    expect(Division(7,3)).to eq(1)
    expect(Division(36,54)).to eq(18)
    expect(Division(2910,1450)).to eq(10)
  end

end
