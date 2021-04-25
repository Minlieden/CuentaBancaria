class CuentaBancaria
  attr_accessor :nombre_de_usuario, :numero__cuenta, :vip

  def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
    @nombre_de_usuario = nombre_de_usuario
    @vip = vip 
    if numero_de_cuenta.digits.count == 8
      @numero__cuenta = numero_de_cuenta
    else
      raise RangeError.new("numero de cuenta tiene un mas o menos de 8 digitos")
    end
  end

  def numero_de_cuenta()
    if self.vip == 1
      return "1-#{self.numero__cuenta}"
    else
      return "0-#{self.numero__cuenta}"
    end
  end
end



#cuenta1= CuentaBancaria.new('Antonio', 1234567)