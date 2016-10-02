require_relative 'scrabbler'

describe Scrabbler do
  let(:scrabbler) { Scrabbler.new('String') }

  it 'can take in a string' do
    expect(scrabbler.string).to eq('String')
  end

  it 'turns the string into an array of letters' do
    expect(scrabbler.chop_up_into_letters).to eq(['s', 't', 'r', 'i', 'n', 'g'])
  end
end
