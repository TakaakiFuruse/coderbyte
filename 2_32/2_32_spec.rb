require_relative '2_32'

describe "RunLength" do
  it "compresses strings" do
    expect(RunLength("aabbcde")).to eq("2a2b1c1d1e")
    expect(RunLength("wwwbbbw")).to eq("3w3b1w")
  end
end

describe "str_to_a" o
  it "creates array from str" do
  expect(str_to_a("aaa")).to eq(["a", "a", "a"])
  end
end

describe "create_counter_array" do
  it "returns array with letter and count" do
    array = ["a", "a", "b", "b"]
    expect(create_counter_array(array)).to eq([2, "a", 2, "b"])
  end
end
