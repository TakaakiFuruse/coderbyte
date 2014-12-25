require_relative "solution"

describe "ArithGeoII" do
  it "returns arithmatic if seq is Arith" do
    expect(ArithGeoII([5,10,15])).to eq("Arithmatic")
    expect(ArithGeoII([18, 16, 14, 12, 10])).to eq("Arithmatic")
  end

  it "returns geometric if seq is Geom" do
    expect(ArithGeoII([5,25,125])).to eq("Geometric")
    expect(ArithGeoII([3, 6, 12, 24, 48])).to eq("Geometric")
  end

  it "returns -1 if seq is neither" do
    expect(ArithGeoII([2,4,16,24])).to eq(-1)
    expect(ArithGeoII([3, 6, 11, 25, 42])).to eq(-1)
  end

end
