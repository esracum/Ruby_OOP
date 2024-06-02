class Point
  attr_reader(:x, :y)

  def Point.falan_filan
    puts "falan filan"
  end
  falan_filan
  def initialize(x,y)
    @x,@y= x,y
  end

  def left?(other)
    @x < other.x
  end

  def to_s
    "(#{x}, #{y})"
  end
end
def main
  p, q = Point.new(3,5), Point.new(9,7)
  puts "#{p} noktasi #{q} noktasinin " + (p.left?(q) ? 'solunda ' : 'saginda')
  #p.falan_filan bu şekilde erisim yapamayız.
end

main