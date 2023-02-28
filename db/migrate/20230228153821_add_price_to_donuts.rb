class AddPriceToDonuts < ActiveRecord::Migration[7.0]
  def change
    add_column :donuts, :price, :float
  end
end
