## Ejercicio 4: Constructor con argumentos.
## Crea una clase llamada *Dog* cuyo constructor
## reciba como argumento un *hash* con la siguiente estructura:
class Dog
  attr_reader :name, :raza, :color
  def initialize(args)
    args.each { |k, v| instance_variable_set("@#{k}", v) unless v.nil? }
    ## instance_variable_set permite Instanciar
  end

  def ladrar
    puts "#{@nombre} de raza #{@raza} y color #{@color} esta ladrando!"
  end
end

## Instanciar un nuevo perro a partir de las propiedades contenidas en el *hash*
## Luego generar un metodo llamado **ladrar** que, mediante interpolacion,
## imprima *"Beethoven esta ladrando!"*

propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }
dog = Dog.new(propiedades)
puts dog.name
dog.ladrar
