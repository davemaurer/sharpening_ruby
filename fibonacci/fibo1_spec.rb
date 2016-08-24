require_relative 'fibo1'

describe Fibo do
  let(:fibo) {Fibo.new}

  it 'starts with and array of 0 and 1' do
    expect(fibo.starting_numbers.class).to eql(Array)
    expect(fibo.starting_numbers).to eql([0,1])
  end

  it 'can take in a number of cycles' do
    fibo1 = Fibo.new(5)
    expect(fibo1.cycles).to eql(5)
  end

  it 'can cycle twice' do
    fibo2 = Fibo.new(2)
    expect(fibo2.start).to eq(2)
  end
end
