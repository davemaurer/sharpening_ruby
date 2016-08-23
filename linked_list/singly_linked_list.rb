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

  def find_by_data(data)
    current_node = head
    until current_node.data == data
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    current_node = head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node.next_node = nil
  end

  def prepend_node(data)
    saved_node = head.next_node
    head.next_node = Node.new(data)
    head.next_node.next_node = saved_node
  end
end
