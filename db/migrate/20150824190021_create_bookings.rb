class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :date_begin
      t.date :date_end
      t.integer :total_price
      t.references :bike, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
