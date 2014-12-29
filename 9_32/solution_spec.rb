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
    it "gets string and returns longest words with repeated letters" do
      expect(test1.letter_count).to eq("greatest")
      expect(test2.letter_count).to eq("Hello")
    end

    it "returns -1 if NO words matched" do
      expect(test3.letter_count).to eq(-1)
    end

    describe "#repeated_letters?" do
      it "returns true if the word HAS repeated letters" do
      end

      it "returns false if the word HAS NO repeated letters" do
      end

    end
  end
end
