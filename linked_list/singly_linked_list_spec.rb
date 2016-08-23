require_relative 'singly_linked_list'

describe SinglyLinkedList do
  let (:list) { SinglyLinkedList.new('MyList') }

  it "has a head" do
    expect(list.head.data).to eql('head')
  end

  it "can add nodes" do
    list.push_node('Sith')
    expect(list.head.next_node.data).to eql('Sith')
  end
end
