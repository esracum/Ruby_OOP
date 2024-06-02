class A

  attr_reader :a, :b

  def initialize ( a:, n:)
    @a= a
    b = a*n
  end
end

class B<A

  def foo
    2*a + (b||01)
  end
end

puts B.new(a:3, n:2).foo