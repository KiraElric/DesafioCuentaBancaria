class Carta
  attr_accessor :numero, :pinta
  def initialize(numero = Random.rand(1..13), pinta = ['C','D','E','T'].sample)
    if !(numero >=1 && numero <= 13) && !(['C','D','E','T'].include?(pinta))
      raise ArgumentError, 'Numero o pinta ingresada no son validas'
    end
    @numero = numero
    @pinta = pinta
  end
end

cards = []

5.times{cards.push(Carta.new)}
print cards

card = Carta.new(14,'f')
print "#{card.numero},#{card.pinta}"
