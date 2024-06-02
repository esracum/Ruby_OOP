class Area
  class << self
    def calculate(width, height)
      width * height
    end
  end
end

puts Area.calculate(5, 5)
class Areaa
  def calculate(width, height)
    width * height
  end
end

area = Areaa.new
puts area.calculate(5, 5)

