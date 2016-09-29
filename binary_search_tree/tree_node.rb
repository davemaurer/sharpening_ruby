class TreeNode
  attr_accessor :data, :left_child, :right_child

  def initialize(data, left=nil, right=nil)
    @left_child  = left
    @right_child = right
    @data        = data
  end
end
