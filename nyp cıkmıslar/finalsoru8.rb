require "forwardable"

class A 
  extend Forwardable 

  def_delegators :@a, :foo

  attr_reader :n 

  def initialize(a, n)
    @a, @n = a,n 
  end

end

class B 
  def initialize(n)
    @n = n 
  end

  def foo
    n*2
  end

  private

  attr_reader :n 
end

puts A.new(B.new(3),5).foo
