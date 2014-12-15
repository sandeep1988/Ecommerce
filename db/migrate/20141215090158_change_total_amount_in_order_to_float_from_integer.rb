class ChangeTotalAmountInOrderToFloatFromInteger < ActiveRecord::Migration
  def up
  	add_column :orders, :total_amount, :float
  end

end
