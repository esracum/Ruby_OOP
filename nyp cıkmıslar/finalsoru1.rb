class A
  attr_reader :a 
  def initialize ( a:, n:)
    @a, @n= a, n
  end
  def <=>(other)
    n <=> other.n 
  end
  protected
  attr_reader :n 
end
class B
  attr_reader :a 
  def initialize ( a:, n:)
    @a, @n= a, n
  end
  def b 
    @a + @n
  end
  def <=>(other)
    n <=> other.n 
  end
  protected
  attr_reader :n 
end
class C<A
end    
p [C.new(a: 5, n: 3), B.new(a:2, n:1)].sort.first.a