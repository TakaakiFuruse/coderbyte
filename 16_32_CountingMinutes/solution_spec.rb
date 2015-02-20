require_relative "solution"

=begin



=end

describe "CountingMinutes" do
  it "recieves time range and returns total mins" do
    expect(CountingMinutes("9:00am-10:00am")).to eq(60)
    expect(CountingMinutes("1:00pm-11:00am")).to eq(1320)
    expect(CountingMinutes("12:30pm-12:00am")).to eq(690)
    expect(CountingMinutes("1:23am-1:08am")).to eq(1425)
  end
end