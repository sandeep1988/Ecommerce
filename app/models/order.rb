class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type, :total_amount
  PAYMENT_TYPES = [ "Check" , "Credit card" , "Purchase order" ]
  validates :name, :address, :email, :pay_type, :presence => true
validates :pay_type, :inclusion => PAYMENT_TYPES
has_many :line_items, :dependent => :destroy

   def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
		  item.cart_id = nil
			line_items << item
			end
	end

	def paypal_url(return_url)
    	values = {
    	:business => 'schourey1988-facilitator@gmail.com',
    	:cmd => '_cart',
    	:upload => 1,
    	:return => return_url,
    	:invoice => id
    	}
    	line_items.each_with_index do |item, index|
      	  values.merge!({
            "amount_#{index + 1}" => item.total_price,
            "item_name_#{index + 1}" => item.product.title,
            "item_number_#{index + 1}" => item.product.id,
            "quantity_#{index + 1}" => item.quantity
      	})
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end

end
