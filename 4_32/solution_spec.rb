
describe "PalindromeTwo" do
  it "returns T if it's palindrome" do
    PalindromeTwo("Noel - sees Leon").to be(true)
    PalindromeTwo("A war at Tarawa!").to be(true)
  end

  it "returns F if it's not Palindrom" do
    PalindromeTwo("This is not a Palindrome").to be(false)
    PalindromeTwo("Is this Palindorm").to be(true)
  end

end
