class User < ActiveRecord::Base
  has_many :movies
  has_many :reviews, dependent: :destroy

  has_secure_password validations: false

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :username, :password, presence: true
  validates :username, length: {in: 2..20},uniqueness: true
  validates :password, on: :create, length: {in: 6..15}
end
