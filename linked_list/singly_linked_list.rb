require_relative 'singly_linked_list_node'

class LinkedList
  attr_accessor :head, :name

  def initialize(name)
    @name = name
    @head = Node.new('head')
  end

  def push_node(data)
    current_node = head
    current_node.next_node = Node.new(data)
  end
end
