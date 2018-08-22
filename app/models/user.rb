class User < ApplicationRecord
  validates :name, :email, :password, :image_url, presence: true
  has_secure_password
end
