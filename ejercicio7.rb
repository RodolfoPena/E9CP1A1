## Ejercicio 7: Objetos y archivos.
## Utilizando el mismo archivo del ejercicio anterior:
## La tienda desea generar un nuevo catalogo que **no incluya**
## el ultimo precio correspondiente a cada producto debido
 ## a que ya no comercializa productos de talla *XS*.
 class Product
attr_reader :contents
    def initialize
        @contents = []
    end
    def add_item(item)
      @item = item
        @contents << @item
    end
    def remove_item(item)
        @contents.delete(@contents.find{|content| content.type == item})
    end
end

products_list = []
data = []
file = File.open('./E9CP1A1/catalog.txt', 'r')
data = file.readlines.map(&:chomp)
data.each do |line|
  line = line.split(', ').map(&:chomp)
  products_list << Product.new.add_item(line).flatten
end
puts ''
print products_list
puts ''

products_list.each do |product|
  product.remove_item('Polera')
end
## Se pide **generar un metodo** que reciba como argumento los
## datos del archivo *catalogo.txt* y luego imprima el nuevo
## catalogo solicitado en un archivo llamado *nuevo_catalogo.txt*
