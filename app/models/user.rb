class User < ApplicationRecord
  validates_presence_of :name, :password, :email
  validates :email, uniqueness: true
end
