require('rspec')
require('scrabble')

describe('String#scrabble') do
  it("returns a scrabble score for a letter") do
    expect("C".scrabble()).to(eq(3))
  end

  it("returns a score for multiple letters") do
    expect("JOHN".scrabble()).to(eq(14))
  end
end
