require_relative 'scrabbler'

describe Scrabbler do
  it 'can take in a string' do
    scrabbler = Scrabbler.new('String')
    expect(scrabbler.string).to eq('String')
  end
end
