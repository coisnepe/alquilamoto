class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :date_birth
  validates :date_driver_licence
  validates :phone_number

  has_many :bikes
  has_many :bookings

end


# create_table "users", force: :cascade do |t|
#     t.string   "first_name"
#     t.string   "last_name"
#     t.string   "email"
#     t.date     "date_birth"
#     t.date     "date_driver_licence"
#     t.string   "phone_number"
#     t.text     "bio"
#     t.datetime "created_at",          null: false
#     t.datetime "updated_at",          null: false
#   end
