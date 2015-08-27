class Bike < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  validates :description, presence: true
  validates :bike_category, presence: true
  validates :price_per_day, presence: true

  has_attached_file :picture,
    styles: { large: "1000x1000>", medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  geocoded_by :city
  after_validation :geocode, if: :city_changed?

end
