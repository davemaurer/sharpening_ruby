require 'minitest/autorun'
require 'minitest/pride'
require_relative 'singly_linked_list'
require_relative 'singly_linked_list_node'

class SinglyLinkedListTest < Minitest::Test
  def list
    @list ||= SinglyLinkedList.new('MyList')
  end

  def test_it_has_a_head
    assert_equal 'head', list.head.data
  end

  def test_it_can_add_nodes
    list.push_node('Jedi')

    assert_equal 'Jedi', list.head.next_node.data
  end

  def test_find_tail
    list.push_node('Jedi')

    assert_equal 'Jedi', list.find_tail.data
  end

  def test_pushing_multiple_nodes
    list.push_node('Jedi')
    list.push_node('Sith')

    assert_equal 'Jedi', list.head.next_node.data
    assert_equal 'Sith', list.find_tail.data
  end

  def test_it_can_find_a_node_by_data
    list.push_node('Darth Vader')

    assert_equal 'Darth Vader', list.find_by_data('Darth Vader').data
  end

  def test_it_can_pop_off_the_last_node
    list.push_node('Luke')
    list.push_node('Leia')

    assert_equal 'Leia', list.find_tail.data

    list.pop

    assert_equal 'Luke', list.find_tail.data

    list.pop

    assert_equal 'head', list.find_tail.data
  end

  def test_it_tells_you_when_trying_to_pop_an_empty_list
    assert_equal 'This list has no nodes', list.pop
  end

  def test_it_can_prepend_a_node
    list.push_node('Tie Fighter')

    assert_equal 'Tie Fighter', list.find_tail.data

    list.prepend_node('X-Wing')

    assert_equal 'X-Wing', list.head.next_node.data
    assert_equal 'Tie Fighter', list.find_tail.data
  end

  def test_it_can_delete_a_node_by_data
    list.push_node('Light Saber')
    list.push_node('Blaster')

    assert_equal 'Light Saber', list.head.next_node.data

    list.delete_node('Light Saber')

    assert_equal 'Blaster', list.head.next_node.data
  end

  def test_it_tells_you_when_trying_to_delete_a_nonexistent_node
    assert_equal 'No such node exists', list.delete_node('Deathstar')

    list.push_node('Sidius')
    list.push_node('Anakin')

    assert_equal 'No such node exists', list.delete_node('Boba-Fett')
  end

  def test_it_can_count_its_nodes_excluding_head
    assert_equal 0, list.count

    list.push_node('Chewy')

    assert_equal 1, list.count

    list.push_node('Han')
    list.push_node('Hoth')
    list.push_node('Tantooine')

    assert_equal 4, list.count
  end
end
