class A

  def initialize ( a:, b:)
    @a, @b= a, b  
  end

  def foo
    @a*@b
  end
end

class B<A
  def initialize(c:)
    super(c,c)
  end 
end

b = B.new(3,4)

puts b.foo