class ReformatReviews < ActiveRecord::Migration[7.0]
  def change
    drop_table :reviews
    create_table 'reviews' do |t|
      t.integer 'user_id', null: false
      t.integer 'owner_id', null: false

      t.timestamps null: false
    end

    add_index :reviews, :user_id
    add_index :reviews, :owner_id
    add_index :reviews, [:user_id, :owner_id], unique: true
  end
end


