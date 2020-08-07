class CuentaBancaria
  attr_accessor :nombre_de_usuario
  def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
    if ((numero_de_cuenta.digits).count != 8)
      raise RangeError, 'Numero de cuenta invalido, el numero de cuenta debe contener 8 digitos'
    end
    @nombre_de_usuario = nombre_de_usuario
    @numero_de_cuenta = numero_de_cuenta
    @vip = vip
  end

  def numero_de_cuenta
    return "#{@vip}-#{@numero_de_cuenta}"
  end
end

person = CuentaBancaria.new('Pepa',11223344,1)
puts person.numero_de_cuenta

person2 = CuentaBancaria.new('Nova',22001133)
puts person2.numero_de_cuenta

person3 = CuentaBancaria.new('Zero',2345)
puts person
