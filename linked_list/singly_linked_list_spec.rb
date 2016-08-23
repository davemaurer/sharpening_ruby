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

  it "can find its tail" do
    list.push_node('Sith')
    expect(list.find_tail.data).to eql('Sith')
  end

  it "can add multiple nodes" do
    list.push_node('Jedi')
    list.push_node('Sith')
    expect(list.head.next_node.data).to eql('Jedi')
    expect(list.find_tail.data).to eql('Sith')
  end

  it "can find nodes by data" do
    list.push_node('hidden rebel base')
    expect(list.find_by_data('hidden rebel base').data).to eql('hidden rebel base')
  end
end
