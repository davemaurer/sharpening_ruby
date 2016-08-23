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

  def test_it_can_prepend_a_node
    list.push_node('Tie Fighter')
    assert_equal 'Tie Fighter', list.find_tail.data
    list.prepend_node('X-Wing')
    assert_equal 'X-Wing', list.head.next_node.data
    assert_equal 'Tie Fighter', list.find_tail.data
  end
end
