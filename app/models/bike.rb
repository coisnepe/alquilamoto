class Bike < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :type, presence: true
end

# create_table "bikes", force: :cascade do |t|
#     t.string   "type"
#     t.text     "description"
#     t.integer  "price_per_day"
#     t.integer  "user_id"
#     t.datetime "created_at",    null: false
#     t.datetime "updated_at",    null: false
#   end
