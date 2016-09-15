require_relative 'node'

class DoublyLinkedList
  attr_accessor :head

  def initialize
    @head = Node.new
  end
end
