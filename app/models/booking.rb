class Booking < ActiveRecord::Base
  belongs_to :bike
  belongs_to :user
end


# create_table "bookings", force: :cascade do |t|
#     t.date     "date_begin"
#     t.date     "date_end"
#     t.integer  "total_price"
#     t.integer  "bike_id"
#     t.integer  "user_id"
#     t.datetime "created_at",  null: false
#     t.datetime "updated_at",  null: false
#   end
