class RemoveDonutsFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :donuts, null: false, foreign_key: true
  end
end
