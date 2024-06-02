$degisken = " "

class Sinif1
  def initialize
    $degisken += "anne"
  end
end

class Sinif2 < Sinif1
  def initialize
    super
    $degisken += "cocuk"
  end
end

nesne = Sinif2.new
p $degisken
