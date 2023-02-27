class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      add_column :bookings, :date_from, :datetime
      add_column :bookings, :date_to, :datetime
      add_reference :bookings, :user, foreign_key: true
      add_reference :bookings, :donut, foreign_key: true
      t.timestamps
    end
  end
end
