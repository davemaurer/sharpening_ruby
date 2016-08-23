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

  it "can pop off the last node" do
    list.push_node('Chewy')
    list.push_node('Han')

    expect(list.find_tail.data).to eql('Han')

    list.pop

    expect(list.find_tail.data).to eql('Chewy')

    list.pop

    expect(list.find_tail.data).to eql('head')
  end

  it "tells you when you try to pop the last node off an empty list" do
    expect(list.pop).to eql('This list has no nodes')
  end

  it "can prepend a node" do
    list.push_node('Lando')

    expect(list.find_tail.data).to eql('Lando')

    list.prepend_node('R2')

    expect(list.head.next_node.data).to eql('R2')
    expect(list.find_tail.data).to eql('Lando')
  end

  it "can delete a node by data" do
    list.push_node('Hoth')
    list.push_node('Tantooine')

    expect(list.head.next_node.data).to eql('Hoth')

    list.delete_node('Hoth')

    expect(list.head.next_node.data).to eql('Tantooine')
  end

  it "tells you if you try to delete a node that isnt in the list" do
    expect(list.delete_node('Hoth')).to eql('No such node exists')

    list.push_node('Yoda')
    list.push_node('Obi-Wan')

    expect(list.delete_node('Darth Maul')).to eql('No such node exists')
  end

  it "can count its nodes excluding head" do
    expect(list.count).to eql(0)

    list.push_node('Chewy')

    expect(list.count).to eql(1)

    list.push_node('Han')
    list.push_node('Hoth')
    list.push_node('Tantooine')

    expect(list.count).to eql(4)
  end
end
