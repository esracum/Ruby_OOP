class Point

  def initialize(x, y)
    @x, @y = x, y
  end

  def x
    @x
  end

  def y
    @y
  end

  def isleft(other)
    @x < other.x
  end

  def to_s
    "(#{@x}, #{@y})"
  end

  # bu defler kod fazlasi bunlari ikinci attr_reader :x, :y satirini basa ekleyerek silebiliriz.
  # attr_reader bir getter
end
def main
  #siniftan nesneye gecis new ile yapilir.
  p,q = Point.new(3,5),Point.new(9,7)
  puts("#{p} noktasi #{q} noktasinin" + (p.isleft(q)? "solunda": "saginda"))
end

# new'e geçirilen parametreler initialize'ye gönderiliyor.
# new bir sinif metodudur.(class method)
# isleft veya left? bir nesne metodudur.(instance method)
# to_s bir noktanin metinsel temsilini dönüyor.(to string)
# nitelik = attribute java ve c# da property adini aliyor.
# nesne.nitelik veya nesne.method olabilir ama rubyde nesne.@... yanlis bir ifade

main