class ChangeDateColumnsInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :date_from, :time_from
    rename_column :bookings, :date_to, :time_to
  end
end
