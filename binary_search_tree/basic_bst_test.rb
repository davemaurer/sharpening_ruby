require 'minitest/autorun'
require 'minitest/pride'
require_relative 'basic_bst'

describe BasicBinarySearchTree do
  it 'it starts out with a root' do
    tree = BasicBinarySearchTree.new
    assert tree.root
  end
end
