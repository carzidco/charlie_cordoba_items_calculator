require File.expand_path(File.join(__FILE__, '..', 'cart'))

items = []
items << Item.new(:name => "Book", :item_type => ItemType::BOOK, :price => 12.49, :quantity => 2, :imported => false, :exempted => true)
items << Item.new(:name => "Music CD", :item_type => ItemType::OTHERS, :price => 14.99, :quantity => 1, :imported => false, :exempted => false)
items << Item.new(:name => "Chocolate bar", :item_type => ItemType::FOOD, :price => 0.85, :quantity => 1, :imported => false, :exempted => true)

cart = Cart.new

items.each { |item| cart.add_to_cart(item) }

puts cart.generate_receipt

# Please uncomment this code to make work the Second Scenario
# items = []
# items << Item.new(:name => "Imported box of chocolates", :item_type => ItemType::IMPORTED_FOOD, :price => 10.00, :quantity => 1, :imported => true, :exempted => true)
# items << Item.new(:name => "Imported bottle of perfume", :item_type => ItemType::IMPORTED_OTHERS, :price => 47.50, :quantity => 1, :imported => true, :exempted => false)

# cart = Cart.new

# items.each { |item| cart.add_to_cart(item) }

# puts cart.generate_receipt

# Please uncomment this code to make work the Third Scenario
# items = []
# items << Item.new(:name => "Imported bottle of perfume", :item_type => ItemType::IMPORTED_OTHERS, :price => 27.99, :quantity => 1, :imported => true, :exempted => false)
# items << Item.new(:name => "Bottle of perfume", :item_type => ItemType::OTHERS, :price => 18.99, :quantity => 1, :imported => false, :exempted => false)
# items << Item.new(:name => "Packet of headache pills", :item_type => ItemType::MEDICAL, :price => 9.75, :quantity => 1, :imported => false, :exempted => true)
# items << Item.new(:name => "Imported box of chocolates", :item_type => ItemType::IMPORTED_FOOD, :price => 11.25, :quantity => 3, :imported => true, :exempted => true)

# cart = Cart.new

# items.each { |item| cart.add_to_cart(item) }

# puts cart.generate_receipt
