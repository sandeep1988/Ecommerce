class AddPriceToCart < ActiveRecord::Migration
  def change
    add_column :carts, :price, :float
  end
end
