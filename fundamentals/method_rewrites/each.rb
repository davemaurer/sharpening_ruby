# Each iterator for the Array class

class Array
  def my_each
    index = 0
    while index < self.size
      yield self[index]
      index +=1
    end
  end
end

#implementation

a = %w(dog cat house tree)
a.my_each do |el|
  puts 'The ' + el
end

# Map

