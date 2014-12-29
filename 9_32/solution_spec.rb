require_relative "solution"

describe "LetterCount" do
  it "gets string and returns longest words with repeated letters" do
    expect("Today, is the greatest day ever!").to eq("greatest")
    expect("Hello apple pie").to eq("Hello")

  end

  it "returns -1 if no words matched" do
    expect("No words").to eq(-1)
  end


end
