require_relative '1_32'

describe "prime_time" do
  it "returns true when arguments IS a prime num" do
    expect(prime_time(19)).to be true
  end
  it "returns false when argument IS NOT a prime num" do
    expect(prime_time(119)).to be false
  end
end