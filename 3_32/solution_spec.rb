require_relative 'solution'

# Input = 9 Output = 23
# Input = 100 Output = 541

describe "PrimeMover" do
  it "returns nth prime number" do
    expect(PrimeMover(9)).to eq(23)
    expect(PrimeMover(100)).to eq(541)
  end
end

describe "isprime?" do
  it "returns true if num is prime num" do
    expect(isprime?(23)).to be(true)
    expect(isprime?(24)).to be(false)
    expect(isprime?(541)).to be(true)
  end
end

describe "prime_array" do
  it "returns arr of 101th prime nums" do
    expect(prime_array.length).to eq(101)
    expect(prime_array.last).to eq(547)
  end
end