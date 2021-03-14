class AddAmountToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :amount, :integer
  end
end
