class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :date_from
      t.string :date_to
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
