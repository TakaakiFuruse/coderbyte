require_relative "solution"

describe "StringScramble" do
  it "returns true if str1 characters can be rearranged to match str2" do
    expect(StringScramble("cdore","coder")).to eq(true)
    expect(StringScramble("rkqodlw","world")).to eq(true)
  end

  it "returns false if not " do
    expect(StringScramble("h3llko","hello")).to eq(false)
  end

end
