require_relative "solution"

describe "PalindromeTwo" do
  it "returns T if it's palindrome" do
    expect(PalindromeTwo("Noel - sees Leon")).to be(true)
    expect(PalindromeTwo("A war at Tarawa!")).to be(true)
  end

  it "returns F if it's not Palindrom" do
    expect(PalindromeTwo("This is not a Palindrome")).to be(false)
    expect(PalindromeTwo("Is this Palindorm")).to be(false)
  end

end
