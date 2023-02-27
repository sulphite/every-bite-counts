class CreateDonuts < ActiveRecord::Migration[7.0]
  def change
    create_table :donuts do |t|

      t.timestamps
    end
  end
end
