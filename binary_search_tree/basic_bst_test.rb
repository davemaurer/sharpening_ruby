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

    assert_equal root.right_child.data, 2
  end

  it 'can add a new node with any numeric value' do
    root = tree.root
    tree.add_node(10)

    assert_equal root.right_child.data, 10
  end

  it 'adds a second higher value node to the right side' do
    root = tree.root
    tree.add_node(2)
    tree.add_node(3)

    assert_equal root.right_child.data, 2
    assert_equal root.right_child.right_child.data, 3
  end

  it 'correctly adds nodes if not in order' do
    root = tree.root
    tree.add_node(3)
    tree.add_node(2)

    assert_equal root.right_child.data, 3
    assert_equal root.right_child.left_child.data, 2
  end
end
