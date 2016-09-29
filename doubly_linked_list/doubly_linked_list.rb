require_relative 'node'

class DoublyLinkedList
  attr_accessor :head

  def initialize
    @head = Node.new
  end

  def add_node
    @head.next_node = Node.new
  end
end
