#attr_reader bir meta metottur. Kendisine verilen her bir sembolü dikkate alarak aynı isimde birer okuyucu metot yazıyor
#bu bir anahtar kelime değil. 
# yerini tuttuğu ifade:
#   def falan
#     @falan
#   end

class Point0
  def initialize(a,b)
    @a, @b = a,b
  end
  def a
    @a
  end
  def b
    @b
  end
end
B= Point0.new 8,9
p B

class Point
  attr_reader  :x, :y

  def initialize(x,y)
    @x, @y = x,y
  end
end
A = Point.new 3,5
p A
#A.x = 7 veya A.y = 0 yazarsak hata aliriz
p A.x
p A.y



