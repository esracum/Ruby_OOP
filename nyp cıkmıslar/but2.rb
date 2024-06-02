class A
  def initialize(value)
    @value = value
  end

  def /(dividend)
    (dividend.zero? ? 2:(@value/dividend))
  end
end
 

a = A.new(6)

puts( ( a/4)+(a/0))