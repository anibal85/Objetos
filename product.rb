class Product
  def initialize(name,*sizes)
   @name = name
   @sizes= sizes.map(&:to_i)
    end

    def new_catalog
    return "#{self.name}, #{self.sizes.join(,)} , #{self.sizes[0..self.sizes-1].join(,)}"
    end
end

products_list = []
data = []

file=File.open('catalogo.txt', 'r')
data=file.readlines
file.close
data.each do |prod|
ls = prod.split(', ')
products_list << Product.new(*ls)
end

puts products_list

out:[]
