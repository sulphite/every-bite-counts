class AddUserForeignKeyToDonuts < ActiveRecord::Migration[7.0]
  def change
    add_reference :donuts, :user, foreign_key: true
  end
end
