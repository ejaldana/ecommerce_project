class Customer < ApplicationRecord
  belongs_to :province
  belongs_to :user
  has_many :orders

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  #columns must be filled out before it can be saved to the db
  validates :name, :address, :city, :postalcode, :email, presence: true

  validates :email, :uniqueness => true, :format => EMAIL_REGEX
end
