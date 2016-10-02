class Bag
  attr_accessor :contents

  def initialize
    @contents = []
  end

  def empty?
    @contents.length == 0
  end

  def count
    @contents.length
  end
end
