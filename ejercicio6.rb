## Ejercicio 6: Objetos y archivos.
## Se tiene un archivo llamado *catalogo.txt* que contiene
## los nombres de los productos que ofrece una tienda junto
## con los precios de las tallas *L, M, S y XS*.

## El siguiente codigo define la clase *Product* y
## ademas realiza la lectura del archivo.
class Product
  attr_reader :name, :large, :medium, :small, :xsmall, :average
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
    @average = (@large + @medium + @small + @xsmall) / 4
  end
end

products_list = []
data = []
file = File.open('./E9CP1A1/catalog.txt', 'r')
data = file.readlines.map(&:chomp)
data.each do |line|
  ls = line.split(', ').map(&:chomp)
  products_list << Product.new(*ls)
end
puts ''
print products_list
puts ''
products_list.each do |product|
  puts "el producto #{product.name} tiene un precio promedio de #{product.average}"
  puts product.xsmall.to_s.to_sym
end
def remove_item(array)
  array.each do |x|
    remove_instance_variable(x.xsmall.to_s.to_sym)

  end
end

print remove_item(products_list)
## Se pide:
## Optimizar el codigo implementando el operador *splat*
## al momento de instanciar los productos
## Generar un metodo que permita calcular el promedio ## de precio por producto
