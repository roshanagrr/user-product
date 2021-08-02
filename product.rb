$LOAD_PATH << '.'
require 'shop_data.rb'

class Product 
  include Data

  def category(element)
    product = all_products
    all_products.each do |product_data|
      product_data.each do |k,v|
        if v == element
          puts "The product is #{product_data[:name]} whose price is #{product_data[:price]} sold by #{product_data[:seller]}"
        end
      end
    end
    puts
  end

  def details(element)
    product = all_products
    all_products.each do |product_data|
      product_data.each do |k,v|
        if v == element
          puts product_data.to_s 
        end
      end
    end
    puts
  end
  
end

product = Product.new
product.category('vehicle')
product.details('vehicle')

product.category('clothes')
product.details('clothes')

product.category('toys')
product.details('toys')
