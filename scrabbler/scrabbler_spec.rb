require_relative 'scrabbler'

describe Scrabbler do
  let(:scrabbler) { Scrabbler.new('String') }

  it 'can take in a string' do
    expect(scrabbler.string).to eq('String')
  end

  it 'turns the string into an array of letters' do
    expect(scrabbler.chop_up_into_letters).to eq(['s', 't', 'r', 'i', 'n', 'g'])
  end

  it 'has a working scoring hash' do
    expect(scrabbler.scoring_key['a']).to eq(1)
    expect(scrabbler.scoring_key['z']).to eq(26)
  end

  it 'can score each letter' do
    expect(scrabbler.score_letters).to eq([19, 20, 18, 9, 14, 7])
  end

  it 'can score a word' do
    expect(scrabbler.score_word).to eq(87)
  end
end
