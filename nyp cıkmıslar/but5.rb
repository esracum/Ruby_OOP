class A
  include Comparable

  attr_reader :a 

  def initialize(a:, n:)
    @a, @n = a,n 
  end

  def <=> (other)
    n <=> other.n
  end

  protected

  attr_reader :n 
end
class D<A 
  def bar(other)
    return n*5 if self<other
    return 0 if self== other
    return n/5 if self>other
  end
end

puts D.new(a:7, n:3).bar(A.new(a:3, n:4))