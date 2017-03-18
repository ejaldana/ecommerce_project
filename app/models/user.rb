class User < ApplicationRecord

  validates :username, uniqueness: true
  #columns must be filled out before it can be saved to the db
  validates :username, :password, presence: true
end
