require_relative '2_32'

describe "RunLength" do
  it "compresses strings" do
    expect(RunLength("aabbcde")).to eq("2a2b1c1d1e")
    expect(RunLength("wwwbbbw")).to eq("3w3b1w")
  end
end

describe "str_to_a" do
  it "creates array from str" do
  expect(str_to_a("aaa")).to eq(["a", "a", "a"])
  end
end

describe "create_counter_hash" do
  it "returns hash with letter as value and count as key" do
    hash = {a: 2, b: 2}
    array = ["a", "a", "b", "b"]
    expect(create_counter_hash(array)).to eq(hash)
  end
end

describe "hash_to_s" do
  it "puts key and value" do
    hash = {a: 2, b: 2}
    expect(hash_to_s(hash)).to eq("2a2b")
  end
end