class Booking < ActiveRecord::Base
  belongs_to :bike
  has_one :owner, through: :bike    #cette ligne nous sert à faire un booking.owner au lieu de booking.bike.owner
  belongs_to :customer, class_name: "User", foreign_key: :user_id
  validates :date_begin, presence: true
  validates :date_end, presence: true
  validates :total_price, presence: true
  validates :bike_id, presence: true
  validates :user_id, presence: true
end
