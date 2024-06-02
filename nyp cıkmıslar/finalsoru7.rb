class A
  def initialize(width, height)
    @width, @height = width, height
  end

  def area 
    area = @height * @weidth
  end
end

class B<A 
  def area
  end
end

b= B.new(10, 20)
puts b.area
