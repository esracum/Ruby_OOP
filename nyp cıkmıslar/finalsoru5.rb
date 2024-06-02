class A
  include Comparable

  attr_reader :a 

  def initialize(a:, n:)
    @a, @n = a,n 
  end 

  def <=> (other)
    other.n <=> n 
  end

  protected

  attr_reader :n 
end 

class D<A 
  def bar(other)
   return n*2 if self<other
   return 0 if self == other 
   return n if self>other
  end
end

puts D.new(a:2, n:4).bar(A.new(a:5, n:3))