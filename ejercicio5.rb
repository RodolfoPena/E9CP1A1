## Ejercicio 5: Traductor entero a codigo Morse.
## Se tiene la clase *Morseable* que contiene un
## metodo de instancia *generate_hash* los datos
## de traduccion de <u>numero entero a codigo morse</u>
class Morseable
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    hash_morse = {
      0 => '-----',
      1 => '.----',
      2 => '..---',
      3 => '...--',
      4 => '....-',
      5 => '.....',
      6 => '-....',
      7 => '--...',
      8 => '---..',
      9 => '----.'
    }
    hash_morse[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(2)
print m.to_morse

## Se pide: Refactorizar el codigo del metodo de instancia
## *generate_hash* para que los datos esten contenidos en un *hash*
## Donde **los numeros seran las claves y la traduccion los valores**
## El metodo *generate_hash* ademas debe retornar la traduccion del
## Numero recibido como argumento.
