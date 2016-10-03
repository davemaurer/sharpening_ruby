require_relative 'leven_distance'

describe LevenDistanceFinder do
  it 'can find a distance of one' do
    string_one = "test"
    string_two = "fest"
    finder =LevenDistanceFinder.new(string_one, string_two)

    expect(finder.find_distance).to eq(1)
  end
end
