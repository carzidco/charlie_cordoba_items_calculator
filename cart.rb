require File.expand_path(File.join(__FILE__, '..', 'item'))
require File.expand_path(File.join(__FILE__, '..', 'item_type'))

class Cart
	attr_accessor :item_list, :total_cost, :sales_tax
			
  	def initialize
	  @item_list = Array.new  	
	  @total_cost = 0.0
	  @sales_tax = 0.0
  	end

	def add_to_cart(item)
	  item_list << item	
	end
	
	def reset_cart
	  @total_cost = 0.0
	  @sales_tax = 0.0
	end
		
	def total_cost
	  '%.2f' % @total_cost
	end
		
	def sales_tax                 
	  '%.2f' % @sales_tax
	end
		
	def generate_receipt
	  reset_cart()
	  result = ''
	  result.concat(self.to_s)
	  item_list.each do |item|
	    @total_cost += item.price_with_tax()
	    @sales_tax += item.sales_tax
	  end
	 
	  result.concat("\nSales Tax: " + sales_tax)
	  result.concat("\nTotal: " + total_cost)
	  result
	end
		
	def to_s
	  result = ''
	  item_list.each do |item|
	  	result.concat(item.to_s)	
	  	result.concat("\n")
	  end	
	  result
	end
end
