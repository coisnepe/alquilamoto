class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :type
      t.text :description
      t.integer :price_per_day
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
