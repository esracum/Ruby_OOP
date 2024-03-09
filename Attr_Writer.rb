#attr_writer bir setter.
#writer olmasaydı
# def e=(value)
#   @e = value
# end 
#şeklinde bir kullanım olurdu.

class Point1
  attr_reader :d, :e
  def initialize(d,e)
    @d, @e = d, e
  end
  
  def d=(value)
    @d = value
  end
  
  def e=(value)
    @e = value
  end
  
end
C = Point1.new 6,7
p C
p C.d
p C.e

C.d= 4
C.e= 5

p C
p C.d
p C.e


class Point2
  attr_reader :f, :g
  attr_writer :f, :g

  def initialize(f,g)
    @f, @g=f, g
  end 

end

x = Point2.new 6117,111
p x
p x.f
p x.g

x.f = 1
x.g = 1
p x
p x.f 
p x.g



