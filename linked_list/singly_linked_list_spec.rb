require_relative 'singly_linked_list'

describe SinglyLinkedList do
  let (:list) { SinglyLinkedList.new('MyList') }

  it 'has a head' do
    expect(list.head.data).to eq('head')
  end

  it 'has a name' do
    expect(list.name).to eq('MyList')
  end

  it 'can add nodes' do
    list.push_node('Sith')

    expect(list.head.next_node.data).to eq('Sith')
  end

  it 'can find its tail' do
    list.push_node('Sith')

    expect(list.find_tail.data).to eq('Sith')
  end

  it 'can add multiple nodes' do
    list.push_node('Jedi')
    list.push_node('Sith')

    expect(list.head.next_node.data).to eq('Jedi')
    expect(list.find_tail.data).to eq('Sith')
  end

  it 'can find nodes by data' do
    list.push_node('hidden rebel base')

    expect(list.find_by_data('hidden rebel base').data).to eq('hidden rebel base')
  end

  it 'can pop off the last node' do
    list.push_node('Chewy')
    list.push_node('Han')

    expect(list.find_tail.data).to eq('Han')

    list.pop

    expect(list.find_tail.data).to eq('Chewy')

    list.pop

    expect(list.find_tail.data).to eq('head')
  end

  it 'tells you when you try to pop the last node off an empty list' do
    expect(list.pop).to eq('This list has no nodes')
  end

  it 'can prepend a node' do
    list.push_node('Lando')

    expect(list.find_tail.data).to eq('Lando')

    list.prepend_node('R2')

    expect(list.head.next_node.data).to eq('R2')
    expect(list.find_tail.data).to eq('Lando')
  end

  it 'can delete a node by data' do
    list.push_node('Hoth')
    list.push_node('Tantooine')

    expect(list.head.next_node.data).to eq('Hoth')
    expect(list.delete_node('Hoth').data).to eq('Hoth')
    expect(list.head.next_node.data).to eq('Tantooine')
  end

  it 'tells you if you try to delete a node that isnt in the list' do
    expect(list.delete_node('Hoth')).to eq('No such node exists')

    list.push_node('Yoda')
    list.push_node('Obi-Wan')

    expect(list.delete_node('Darth Maul')).to eq('No such node exists')
  end

  it 'can delete entire list' do
    list.push_node('Han')
    list.push_node('Hoth')
    list.push_node('Tantooine')
    list.push_node('Yoda')
    list.push_node('Obi-Wan')

    expect(list.count).to eq(5)

    list.delete_all

    expect(list.count).to eq(0)
  end

  it 'can count its nodes excluding head' do
    expect(list.count).to eq(0)

    list.push_node('Chewy')

    expect(list.count).to eq(1)

    list.push_node('Han')
    list.push_node('Hoth')
    list.push_node('Tantooine')

    expect(list.count).to eq(4)
  end

  it 'can return all nodes' do
    list.push_node('Chewy')
    list.push_node('Han')
    list.push_node('Hoth')

    expect(list.all_nodes).to eq(['Chewy', 'Han', 'Hoth'])
  end

  it 'tells you when you ask for all nodes in an empty list' do
    expect(list.all_nodes).to eq('This list has no nodes')
  end
end
