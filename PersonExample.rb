class Insan

  attr_reader :ad, :yas, :boy

  def initialize(ad:, yas:,boy:)
    @ad = ad
    @yas = yas
    @boy = boy
  end

  # def ad
  #   @ad
  # end

  # def yas
  #   @yas
  # end

  # def boy
  #   @boy
  # end
  #attr_reader oldugu icin bu satirlara ihtiyac yok

end

E = Insan.new(ad:"Esra",yas: 22, boy:161)

# puts E.ad
# puts E.yas
# puts E.boy

nesneler = []
[
  {
    ad:"Efsa",
    yas: 24,
    boy: 175
  },
  {
    ad:"Ahmet",
    yas: 28,
    boy: 179
  }
].each do |nitelikler|
  # nesneler << Insan.new(ad:nitelikler[:ad], yas:nitelikler[:soyad], boy:nitelikler[:boy]) yerine daha kisa olan:
  nesneler << Insan.new(**nitelikler)
  #bu ** isaretine splat deniyor. tüm parametreler ayri ayri erisilebiliyor
end
#each do yerine map kullanmayi dene:
nesneler1 = []
[
  {
    ad:"Azra",
    yas: 24,
    boy: 175
  },
  {
    ad:"Gülhan",
    yas: 28,
    boy: 179
  }
].map do |nitelikler|
  # nesneler << Insan.new(ad:nitelikler[:ad], yas:nitelikler[:soyad], boy:nitelikler[:boy]) yerine daha kisa olan:
  nesneler1 << Insan.new(**nitelikler)
  #bu ** isaretine splat deniyor. tüm parametreler ayri ayri erisilebiliyor
end


p nesneler
p nesneler1

#eğer sadece her elemana bir işlem uygulayıp sonuçları toplamak istiyorsanız ve sonuçları bir dizi olarak almanız gerekiyorsa map kullanmak daha uygun olabilir

#eğer sadece bir döngü yaparak işlem yapmak istiyorsanız ve sonuçları dizi olarak almanız gerekmiyorsa, each kullanabilirsiniz.
