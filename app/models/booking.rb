class Booking < ActiveRecord::Base
  belongs_to :bike
  belongs_to :user

  validates :date_begin, presence: true
  validates :date_end, presence: true
  validate :total_price, presence: true
  validates :bike_id, presence: true
  validates :user_id, presence: true
end
