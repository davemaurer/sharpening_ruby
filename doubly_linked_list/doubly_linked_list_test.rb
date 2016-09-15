require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'doubly_linked_list'

describe DoublyLinkedList do
  it 'is a thing' do
    list = DoublyLinkedList.new
    assert(list)
  end
end
