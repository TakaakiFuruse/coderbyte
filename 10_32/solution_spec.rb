require_relative "solution"

describe "LetterCount" do

  let(:test1) {LetterCount.new("Today, is the greatest day ever!")}
  let(:test2) {LetterCount.new("Hello apple pie")}
  let(:test3) {LetterCount.new("No words")}

  it "initialize instance variables" do
    expect(test1.sentence.class).to be(String)
    expect(test1.words_arr.class).to be(Array)
  end

  describe "#letter_count" do
    it "returns longest words with repeated letters" do
      expect(test1.letter_count).to eq("greatest")
      expect(test2.letter_count).to eq("Hello")
    end

    it "returns -1 if NO words matched" do
      expect(test3.letter_count).to eq(-1)
    end
  end

  describe "#repeated_letters" do
    it "finds words with repeated letter and retun them as array " do
      expect(test1.repeated_letters.length).to eq(2)
      expect(test2.repeated_letters.length).to eq(2)
      expect(test3.repeated_letters.length).to eq(0)
    end
  end

end
