class Point
  attr_reader :x, :y 
   
  def initialize(x,y)
    @x,@y =x,y
  end

  def move(delta_x,delta_y)
    @x += delta_x
    @y += delta_y
    self
  end
  def to_s
    "(#{x},#{y})"
  end
end

point = Point.new(3, 5)

new_point = point.move(2, 3)

puts "Yeni Nokta: #{new_point}"

#buna bad dememizin sebebi sabit olması gereken bir nokta nesnesinin degistirilebilir olmasi