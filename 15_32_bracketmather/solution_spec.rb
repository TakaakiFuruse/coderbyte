require_relative "solution"

=begin



=end

describe "BracketMatcher" do
  it "returns 1 if bracket matches, returns 0 if not" do
    expect(BracketMatcher("()")).to eq(1)
    expect(BracketMatcher("())")).to eq(0)
    expect(BracketMatcher("(hello (world))")).to eq(1)
    expect(BracketMatcher( "((hello (world))")).to eq(0)
    expect(BracketMatcher("(coder)(byte))")).to eq(0)
    expect(BracketMatcher("(c(oder)) b(yte)")).to eq(1)
  end
end