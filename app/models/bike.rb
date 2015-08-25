class Bike < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  validates :description, presence: true
  validates :type, presence: true
  validates :price_per_day, presence: true
end
