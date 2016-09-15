require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'doubly_linked_list'

describe DoublyLinkedList do
  let(:list) { DoublyLinkedList.new }

  it 'is a thing' do
    assert(list)
  end

  it 'has a head' do
    assert(list.head)
  end

  it 'can add a node' do
    list.add_node
    assert(list.head.next_node)
  end
end
