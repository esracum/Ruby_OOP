class Bolum
  attr_reader :isim
  $liste = []

  def initialize(is)
    @isim = is
    puts @isim
  end

  def kisi_ekle(isim)
    $liste << isim
  end

  def kisiler
    puts $liste
  end
end

bolum = Bolum.new("Bilgisayar Muh")
bolum.kisi_ekle("Erd")
bolum.kisi_ekle("Gokhan")
bolum.kisiler
