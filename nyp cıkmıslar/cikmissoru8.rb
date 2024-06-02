class Kisi
  def initialize(ad, soyad)
    @ad, @soyad = ad, soyad
  end

  def selam
    puts "Merhaba ben #{@ad.capitalize} #{@soyad.upcase}"
  end
end

class Muhendis < Kisi
  def initialize(ad, soyad, meslek)
    super(ad, soyad)
    @meslek = meslek
  end

  def selam
    puts "#{super} #{@meslek.capitalize} okuyorum."
  end
end

muhendis = Muhendis.new("Zeynep", "Kucuk", "Bilgisayar Muhendisligi")
muhendis.selam
