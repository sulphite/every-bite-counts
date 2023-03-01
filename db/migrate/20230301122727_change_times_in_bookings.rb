class ChangeTimesInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :time_from, :string
    remove_column :bookings, :time_to, :string

    add_column :bookings, :time_from, :time
    add_column :bookings, :time_to, :time
  end
end
