require_relative "solution"

=begin



=end

describe "PermutationStep" do
  it "checks permutation of num and returns next largest permutated(?) number " do
    expect(PermutationStep(123)).to eq(132)
    expect(PermutationStep(123453)).to eq(123534)
    expect(PermutationStep(11121)).to eq(11211)
    expect(PermutationStep(41352)).to eq(41523)
  end
  
  it "returns -1 if it can't find permutated(?) numbers " do
   expect(PermutationStep(999)).to eq(-1)
  end


end