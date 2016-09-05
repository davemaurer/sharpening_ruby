require 'minitest/autorun'
require 'minitest/pride'
require_relative 'basic_bst'

describe BasicBinarySearchTree do
  def tree
    @tree ||= BasicBinarySearchTree.new
  end

  it 'starts out with a root' do
    assert tree.root
  end

  it 'has information about its value, left child, and right child in its root node' do
    root = tree.root

    assert_equal root.data, 1
    assert_equal root.left_child, nil
    assert_equal root.right_child, nil
  end

  it 'can accept a new node' do
    root = tree.root
    tree.add_node(2)

    assert_equal root.left_child.data, 2
  end
end
