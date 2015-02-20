require_relative "solution"
=begin

123456789,  10000 -> 12,345.6789
Input = 2 , num2 = 3  Output = "0.6667"
Input = 10 , num2 = 10 Output = "1.0000"
=end


describe "FormattedDivision" do
  it "return the result as a string with properly formatted commas " do
    expect(FormattedDivision(12_345_689, 10_000)).to eq("12,345.6789")
    expect(FormattedDivision(2, 3)).to eq("0.6667")
    expect(FormattedDivision(10, 2)).to eq("1.0000")
  end
end