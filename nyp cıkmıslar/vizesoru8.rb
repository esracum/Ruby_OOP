class Box
  def initialize(w, h)
    @width, @height = w, h
  end

  def getArea 
    area = @height * @width
    "Big box area is: #{area}"
  end
end

class BigBox<Box 
  def getArea
  end
end

box = BigBox.new(10, 20)
 p box.getArea


