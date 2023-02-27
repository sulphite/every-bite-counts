class AddDonutReferenceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :donuts, foreign_key: true
  end
end
