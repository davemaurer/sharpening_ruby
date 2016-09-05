require_relative 'tree_node'

class BasicBinarySearchTree
  attr_reader :root

  def initialize
    @root = TreeNode.new
  end
end
