class Okul 
  attr_reader :okulad, :okulid
  #attr_accessor :okulad, :okulid
  def initialize(okulad, okulid)
    @okulad, @okulid = okulad, okulid
  end
end
omu = Okul.new "OMU", 55
omu.okulid = 55000
puts omu.okulid
