class User < ActiveRecord::Base
  has_many :movies
  has_secure_password validations: false
end
