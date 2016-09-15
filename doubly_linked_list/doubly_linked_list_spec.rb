require_relative 'doubly_linked_list'

describe DoublyLinkedList do
  let(:list) { DoublyLinkedList.new }

  it 'has a head' do
    expect(list.head)
  end
end
