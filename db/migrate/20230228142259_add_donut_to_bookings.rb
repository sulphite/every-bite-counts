class AddDonutToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :donut, null: false, foreign_key: true
  end
end
