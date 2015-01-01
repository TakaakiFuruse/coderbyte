require_relative "solution"

describe "CaesarCipher" do
  let(:test1) {CaesarCipher.new("Hello", 4)}
  let(:test2) {CaesarCipher.new("abc", 0)}
  let(:test3) {CaesarCipher.new("Caesar Cipher", 2)}
  let(:test4) {CaesarCipher.new("!., :;-", 1)}

  it "initialize instances" do
    expect(test1.str).to eq("Hello")
    expect(test1.num).to eq(4)
    expect(test1.letter_arr).to eq(["H","e","l","l","o"])
  end

  describe "#gen_caesar_cipher" do
    it "returns encrypted strings" do
      expect(test1.gen_caesar_cipher).to eq("Lipps")
      expect(test2.gen_caesar_cipher).to eq("abc")
      expect(test3.gen_caesar_cipher).to eq("Ecguct Ekrjgt")
      expect(test4.gen_caesar_cipher).to eq("!., :;-")
    end
  end



end
