class ChangeTotalAmountInOrderToFloatFromInteger < ActiveRecord::Migration
  def up
  	change_column :orders, :total_amount, :float
  end

end
