require_relative "solution"

describe "ArrayAddition" do
  it "returns false if lagest element = sum of all or any other element in arr" do
    expect(ArrayAddition([5,7,16,1,2])).to be(false)
    expect(ArrayAddition([1,2,3,100])).to be(false)
  end

  it "returns true if lagest element = sum of all or any other element in arr" do
    expect(ArrayAddition([3,5,-1,8,12])).to be(false)
    expect(ArrayAddition([4, 6, 23, 10,1,3])).to be(false)
  end

end
