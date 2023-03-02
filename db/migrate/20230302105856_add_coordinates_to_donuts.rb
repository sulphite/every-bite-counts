class AddCoordinatesToDonuts < ActiveRecord::Migration[7.0]
  def change
    add_column :donuts, :latitude, :float
    add_column :donuts, :longitude, :float
  end
end
