class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #after_create :send_welcome_email

  has_many :bookings
  has_many :bikes

  has_attached_file :picture,
      styles: { medium: "300x300#", small: "200x200#", thumb: "40x40#" },
      :default_url => "brand/:style/missing-pic.png"

    validates_attachment_content_type :picture,
      content_type: /\Aimage\/.*\z/

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
