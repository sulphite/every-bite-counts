class DonutMigration < ActiveRecord::Migration[7.0]
  def change
    add_column :donuts, :title, :string
    add_column :donuts, :description, :text
    add_column :donuts, :flavour, :string
    add_column :donuts, :location, :string
    add_column :donuts, :wholeness, :integer, default: 100
    
  end
end
