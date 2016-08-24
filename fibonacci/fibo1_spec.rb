require_relative 'fibo1'

describe Fibo do
  let(:fibo) {Fibo.new}

  it 'starts with and array of 0 and 1' do
    expect(fibo.starting_numbers.class).to eql(Array)
    expect(fibo.starting_numbers).to eql([0,1])
  end
end
