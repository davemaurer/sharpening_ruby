require_relative 'singly_linked_list_node'

class SinglyLinkedList
  attr_accessor :head, :name

  def initialize(name)
    @name = name
    @head = Node.new('head')
  end

  def push_node(data)
    current_node = find_tail
    current_node.next_node = Node.new(data)
  end

  def find_tail
    current_node = head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node
  end
end
