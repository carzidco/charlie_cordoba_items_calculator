require File.expand_path(File.join(__FILE__, '..', 'tax_type'))

module Calculator

  extend self
  
 	def calculate_tax(item)
	   item.price() * item.tax_type()
 	end
 	 	
 	private
 	
 	def get_item_tax_type(item)
 	  if item.imported? && !item.exempted?
 	  	 TaxType::BOTH
 	  elsif item.imported? && item.exempted?
		TaxType::IMPORTED
 	  elsif !item.imported? && !item.exempted?
 	  	TaxType::BASIC
 	  else
 	  	TaxType::NA
 	  end
 	end
end
