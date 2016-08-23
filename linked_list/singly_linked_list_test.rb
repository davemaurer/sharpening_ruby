require 'minitest/autorun'
require 'minitest/pride'
require_relative 'singly_linked_list'
require_relative 'singly_linked_list_node'

class LinkedListTest < Minitest::Test
  def list
    @list ||= LinkedList.new('MyList')
  end

  def test_it_has_a_head
    assert_equal 'head', list.head.data
  end

  def test_it_can_add_nodes
    list.push_node('Jedi')
    assert_equal 'Jedi', list.head.next_node.data
  end
end
