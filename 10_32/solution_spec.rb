require_relative "solution"

describe "CaesarCipher" do
  let(:test1) {CaesarCipher.new("Hello", 4)}
  let(:test2) {CaesarCipher.new("abc", 0)}
  let(:test3) {CaesarCipher.new("Caesar Cipher", 0)}

  it "initialize instances" do
    expect(test1.str).to eq("Hello")
    expect(test1.num).to eq(4)
    expect(test1.arr).to eq(["Hello"])
  end

  describe "#gen_caesar_cipher" do
    it "returns encrypted strings" do
      expect(test1.gen_caesar_cipher).to eq("Lipps")
      expect(test2.gen_caesar_cipher).to eq("abc")
      expect(test3.gen_caesar_cipher).to eq("Ecguct Ekrjgt")
    end
  end

  describe "#next_char" do
    it "returns next character" do
      expect("a").to eq("b")
      expect("b").to eq("c")
      expect("A").to eq("B")
      expect("B").to eq("C")
      expect("B").to eq("C")
      expect(" ").to eq(" ")
      expect(".").to eq(".")
      expect("-").to eq("-")
      expect("?").to eq("?")
      expect(",").to eq(",")
    end
  end

  describe "next_char_recursive" do
    it "returns Nth character based on num." do
    end
  end


end
