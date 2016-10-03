require_relative 'medusa'

class Person
  attr_reader :name
  attr_accessor :victims

  def initialize(name)
    @name    = name
    @stoned  = false
    @victims = []
  end

  def stoned?
    @victims.include?(self)
  end
end
