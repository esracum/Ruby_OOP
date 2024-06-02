class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance
    Math.sqrt((@x * @x) + (@y * @y))
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.new(0, 0), width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def distance
    @position.distance
  end
end

def main
  r = Rectangular.new(position: Point.new(1, 0), width: 3, height: 5)
  puts r.distance
end
main