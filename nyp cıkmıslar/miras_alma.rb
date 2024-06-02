class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end
  def to_s
    "(#{x},#{y})"
  end
  def self.origin
    new(0,0)
  end
end
class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.origin, width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def area
    width * height
  end

  def periphery
    2 * (width + height)
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end

  def to_s
    "[#{width}x#{height}]@#{position}"
  end
end

class Square < Rectangular
  attr_reader :position, :side

  def initialize(side, position: Point.origin)
    @position = position
    @side     = side
  end

  def area
    side * side
  end

  def periphery
    4 * side
  end

  def to_s
    "#{side}@#{position}"
  end
end

def main
  squares = [Square.new(3), Square.new(1, position: Point.new(3, 5))]
  squares.each do |square|
    puts square
  end
end
main 