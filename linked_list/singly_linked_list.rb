require_relative 'singly_linked_list_node'

class SinglyLinkedList
  attr_accessor :head, :name

  def initialize(name)
    @name = name
    @head = Node.new('head')
  end

  def push_node(data)
    current_node = find_tail
    current_node.next_node = Node.new(data)
  end

  def find_tail
    current_node = head
    until current_node.tail?
      current_node = current_node.next_node
    end
    current_node
  end

  def find_by_data(data)
    current_node = head
    until current_node.data == data
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    current_node = head
    return 'This list has no nodes' if current_node.tail?
    until current_node.next_node.tail?
      current_node = current_node.next_node
    end
    current_node.next_node = nil
  end

  def delete_node(data)
    current_node = head
    until current_node.data == data
      return "No such node exists" if current_node.tail? && current_node != data
      if current_node.next_node.data == data
        return check_deleted_node(current_node)
      else
        current_node = current_node.next_node
      end
    end
  end

  def check_deleted_node(current_node)
    popped_node = current_node.next_node
    if current_node.next_node.next_node
      current_node.next_node = current_node.next_node.next_node
    else
      current_node.next_node = nil
    end
    return popped_node
  end

  def delete_all
    head.next_node = nil
  end

  def prepend_node(data)
    saved_node = head.next_node
    head.next_node = Node.new(data)
    head.next_node.next_node = saved_node
  end

  def count
    counter = 0
    current_node = head
    until current_node.tail?
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end
end
