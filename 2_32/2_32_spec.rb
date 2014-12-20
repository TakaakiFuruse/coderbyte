require_relative '2_32'

describe "RunLength" do
  it "returns true when arguments IS a prime num" do
    expect(RunLength("aabbcde")).to eq("2a2b1c1d1e")
  end

  it "returns false when argument IS NOT a prime num" do
    expect(RunLength("wwwbbbw")).to eq("3w3b1w")
  end
end