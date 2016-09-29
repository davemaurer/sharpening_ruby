require_relative 'fibo1_runner'
require 'stringio'

describe FiboRunner do
  let(:input) {StringIO.new}
  let(:runner) {FiboRunner.calculate}

  it 'accepts user input' do
    result = runner.calculate
    input.puts '3'
    input.rewind

    expect(result).to eql(3)
  end
end
