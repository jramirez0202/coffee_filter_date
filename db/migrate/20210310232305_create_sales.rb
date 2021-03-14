class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :name
      t.datetime :date
      t.decimal :price
      t.string :origin

      t.timestamps
    end
  end
end
