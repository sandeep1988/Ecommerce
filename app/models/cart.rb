class Cart < ActiveRecord::Base
  attr_accessible :price
  has_many :line_items, :dependent => :destroy

    def add_product(product_id)
		current_item = line_items.where(:product_id => product_id).first
		if current_item
		current_item.quantity += 1
		else
		current_item = line_items.build(:product_id => product_id)
		end
		current_item
		end

    def total_price
	   line_items.to_a.sum { |item| item.total_price }
	end

	def total_items
		line_items.sum(:quantity)
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
