class Carta #
  
  attr_reader :numero, :pinta
  # este genera Getter para obtener los atributos de la instancia

  def initialize(numero, pinta)
    #constructor

    pinta.upcase!
    #transforma el valor en pinta y lo sobreescribe en mayuscula
    pintas = ['C', 'D','E', 'T']
    # se inicializa las pintas posibles en un arreglo

    #se evalua que el valor sea en el rango luego se evalua que el valor de pinta exista dentro del arreglo pintas
    if (numero >= 1 && numero <= 13) && pintas.include?(pinta)
      @numero = numero
      @pinta =pinta 
    else
      raise ArgumentError.new("No es un argumento valido") #levanta un error controlado del tipo argunmenterror

    end

    
  end

end


pintas = ['C', 'D','E', 'T']

carta1 = Carta.new(rand(1..13), pintas.sample)

cartas= []

5.times do |i|
  cartas.push(Carta.new(rand(1..13), pintas.sample))
end

print cartas