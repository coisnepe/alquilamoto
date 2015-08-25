class Bike < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :type, presence: true
  validates :price_per_day, presence: true
end
