require_relative 'tree_node'

class BasicBinarySearchTree
  attr_reader :root

  def initialize
    @root = TreeNode.new(1)
  end

  def add_node(data)
    current_node = @root
    # if @head.nil?
    #   @head = Node.new(stuff)
    # else
      while current_node
        if data < current_node.data && current_node.left_child.nil?
          current_node.left_child = TreeNode.new(data)
        elsif data > current_node.data && current_node.right_child.nil?
          current_node.right_child = TreeNode.new(data)
        elsif data < current_node.data
          current_node = current_node.left_child
        elsif data > current_node.data
          current_node = current_node.right_child
        else
          return
        # end
      end
    end
  end
end
