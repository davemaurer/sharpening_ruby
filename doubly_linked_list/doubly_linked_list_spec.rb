require_relative 'doubly_linked_list'

describe DoublyLinkedList do
  let(:list) { DoublyLinkedList.new }

  it 'has a head' do
    expect(list.head)
  end

  it 'can add a node' do
    list.add_node
    expect(list.head.next_node)
  end
end
