class A
  def initialize(a, b)
    @a, @b = a, b 
  end

  def bar 
    @a * @b 
  end
end 

class B<A
  def initialize(c)
    super(c, 2*c)
  end
end
b = B.new(5)
puts b.bar

