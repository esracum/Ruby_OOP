require "forwardable"

class A
  extend Forwardable
  def_delegators: @a, :bar
  attr_reader :n

  def initialize(a:, n:)
    @a, @n = a,n 
  end
end
class B
  def initialize(n)
    @n =n
  end
  def bar
    n*3 
  end
  private 
  attr_reader :n 
end
puts [C.new(a:3, n:3), B.new(a:6, n:4)].sort.first.a