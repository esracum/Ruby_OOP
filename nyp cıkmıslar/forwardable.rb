require 'forwardable' # Standart kitaplıktan yükle

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
  extend Forwardable # Delegasyon için gerekli DSL'i (ör. def_delegator) etkinleştir
  include Comparable
  def_delegator :@position, :distance # Delegasyonu tanımla

  attr_reader :position, :width, :height

  def initialize(position: Point.new(0, 0), width:, height:)
    @position = position
    @width    = width
    @height   = height
  end
  def eql?(other)
    (@x == other.x && @y == other.y)
  end
  def hash
    [@position.x, @position.y].hash
  end
  

  def area
    width* height
  end
  def eql?(other)
    @position.eql?(other.position) && @width == other.width && @height == other.height
  end
  


  def <=>(other)
    area <=> other.area
  end

end


 
def main
  
  rectangulars = [
    Rectangular.new(position: Point.new(0, 0), width: 3, height: 5),
    Rectangular.new(position: Point.new(0, 0), width: 2, height: 4),
    Rectangular.new(position: Point.new(0, 0), width: 3, height: 5),
    Rectangular.new(position: Point.new(2, 4), width: 4, height: 2)
  ]

  puts rectangulars.uniq.size

end

main