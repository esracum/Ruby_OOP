class A
  attr_reader :a, :b

  def initialize(a:, n:)
    @a = a 
    @b = a * n 
  end
end

class B<A
  def foo 
    3 * a + (b||5)
  end
end

puts B.new(a:2, n:7).foo