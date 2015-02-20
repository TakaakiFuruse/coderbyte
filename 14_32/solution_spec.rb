require_relative "solution"
=begin

123456789,  10000 -> 12,345.6789
Input = 2 , num2 = 3  Output = "0.6667"
Input = 10 , num2 = 10 Output = "1.0000"

123456789/10000 => 12345 
(123456789/10000).to_f => 12345.0

=end


describe "FormattedDivision" do
  it "return the result as a string with properly formatted commas " do
    expect(FormattedDivision(123_456_789, 10_000)).to eq("12,345.6789")
    expect(FormattedDivision(2, 3)).to eq("0.6667")
    expect(FormattedDivision(10, 10)).to eq("1.0000")
  end
end

describe "split_by_comma" do
  it "separates number by commna and returns result as string" do
    expect(split_by_comma(10000)).to eq("10,000")
    expect(split_by_comma(1000)).to eq("1,000")
    expect(split_by_comma(123)).to eq("123")
    expect(split_by_comma(10)).to eq("10")


  end
end